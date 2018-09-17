

##############################################################################
#
# A simple heatmap
# ----------------------------
#
# We may start by defining some data. What we need is a 2D list or array
# which defines the data to color code. We then also need two lists or arrays
# of categories; of course the number of elements in those lists
# need to match the data along the respective axes.
# The heatmap itself is an :meth:`imshow <matplotlib.axes.Axes.imshow>` plot
# with the labels set to the categories we have.
# Note that it is important to set both, the tick locations
# (:meth:`set_xticks<matplotlib.axes.Axes.set_xticks>`) as well as the
# tick labels (:meth:`set_xticklabels<matplotlib.axes.Axes.set_xticklabels>`),
# otherwise they would become out of sync. The locations are just
# the ascending integer numbers, while the ticklabels are the labels to show.
# Finally we can label the data itself by creating a
# :class:`~matplotlib.text.Text` within each cell showing the value of
# that cell.

import os
import errno
import sys
import logging
import argparse
import fnmatch
import json
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
from datetime import datetime
import json


logpath = os.path.join(os.path.expanduser("~"), '.heatmaps')
if not os.path.exists(logpath):
    os.makedirs(logpath)

current_time = datetime.now().strftime("%Y%m%d-%H%M%S")#[:-1] + '0'
log_name = 'myheatmaps_{}.log'.format(current_time)
stempel_logfilepath = os.path.join(logpath, log_name)
logging.basicConfig(level=logging.INFO, filename=stempel_logfilepath,
                    format='%(asctime)s %(levelname)s %(message)s')



def create_parser():
    """This method creates a parser
    """
    example_gen = 'Example usage: heatmap -w ~/workspace -i -d 2 -k star -C constant'
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('-w', '--workspace', metavar=('WORKSAPCE'),
                        required=True, help='Path to the workspace')
    parser.add_argument('-c', '--classification', metavar=('CLASSIFICATION'),
                        choices=['isotropic', 'heterogeneous', 'homogeneous', 'point-symmetric'], default='isotropic', help='Classification of the stencil')
    parser.add_argument('-C', '--coefficients', metavar=('COEFFICIENTS'),
                        choices=['constant', 'variable'], default='constant', help='Kind of the coefficients of the stencil')
    parser.add_argument('-s', '--sizes', metavar=('SIZE'),
                        required=True, nargs='*', help='Size of the stencil in each dimension')
    parser.add_argument('-t', '--threads', metavar=('THREADS'),
                        nargs='*', required=True, help='Number of threads to use for the ECM and Roofline predictions, respectively')
    parser.add_argument('-k', '--kind', metavar=('KIND'),
                        default='star', choices=['star', 'box'], help='Kind of stencil')
    parser.add_argument('-r', '--radius', default=1, metavar=('RADIUS'),
                        nargs='*', help='Radius of the stencil')
    parser.add_argument('-d', '--dimensions', metavar=('DIMENSIONS'),
                        type=int, default=2, help='Number of dimensions of the stencil')
    parser.set_defaults(func=collect)

    return parser


#############################################################################
# Using the helper function code style
# ------------------------------------
#
# As discussed in the :ref:`Coding styles <coding_styles>`
# one might want to reuse such code to create some kind of heatmap
# for different input data and/or on different axes.
# We create a function that takes the data and the row and column labels as
# input, and allows arguments that are used to customize the plot
#
# Here, in addition to the above we also want to create a colorbar and
# position the labels above of the heatmap instead of below it.
# The annotations shall get different colors depending on a threshold
# for better contrast against the pixel color.
# Finally, we turn the surrounding axes spines off and create
# a grid of white lines to separate the cells.


def heatmap(data, row_labels, col_labels, ax=None,
            cbar_kw={}, cbarlabel="", **kwargs):
    """
    Create a heatmap from a numpy array and two lists of labels.

    Arguments:
        data       : A 2D numpy array of shape (N,M)
        row_labels : A list or array of length N with the labels
                     for the rows
        col_labels : A list or array of length M with the labels
                     for the columns
    Optional arguments:
        ax         : A matplotlib.axes.Axes instance to which the heatmap
                     is plotted. If not provided, use current axes or
                     create a new one.
        cbar_kw    : A dictionary with arguments to
                     :meth:`matplotlib.Figure.colorbar`.
        cbarlabel  : The label for the colorbar
    All other arguments are directly passed on to the imshow call.
    """

    if not ax:
        ax = plt.gca()

    # Plot the heatmap
    im = ax.imshow(data, vmin=-100, vmax=100, **kwargs)

    # Create colorbar
    cbar = ax.figure.colorbar(im, ax=ax, **cbar_kw)
    cbar.ax.set_ylabel(cbarlabel, rotation=-90, va="bottom")

    # We want to show all ticks...
    ax.set_xticks(np.arange(data.shape[1]))
    ax.set_yticks(np.arange(data.shape[0]))
    # ... and label them with the respective list entries.
    ax.set_xticklabels(col_labels)
    ax.set_yticklabels(row_labels)

    # Let the horizontal axes labeling appear on top.
    ax.tick_params(top=True, bottom=False,
                   labeltop=True, labelbottom=False)

    # Rotate the tick labels and set their alignment.
    plt.setp(ax.get_xticklabels(), rotation=-30, ha="right",
             rotation_mode="anchor")

    # Turn spines off and create white grid.
    for edge, spine in ax.spines.items():
        spine.set_visible(False)


    ax.set_xticks(np.arange(data.shape[1]+1)-.5, minor=True)
    ax.set_yticks(np.arange(data.shape[0]+1)-.5, minor=True)
    ax.grid(which="minor", color="w", linestyle='-', linewidth=3)
    ax.tick_params(which="minor", bottom=False, left=False)

    return im, cbar


def annotate_heatmap(im, data=None, valfmt="{x:.2f}",
                     #textcolors=["black", "white"],
                     textcolors=["black", "black"],
                     threshold=None, **textkw):
    """
    A function to annotate a heatmap.

    Arguments:
        im         : The AxesImage to be labeled.
    Optional arguments:
        data       : Data used to annotate. If None, the image's data is used.
        valfmt     : The format of the annotations inside the heatmap.
                     This should either use the string format method, e.g.
                     "$ {x:.2f}", or be a :class:`matplotlib.ticker.Formatter`.
        textcolors : A list or array of two color specifications. The first is
                     used for values below a threshold, the second for those
                     above.
        threshold  : Value in data units according to which the colors from
                     textcolors are applied. If None (the default) uses the
                     middle of the colormap as separation.

    Further arguments are passed on to the created text labels.
    """

    if not isinstance(data, (list, np.ndarray)):
        data = im.get_array()

    # Normalize the threshold to the images color range.
    if threshold is not None:
        threshold = im.norm(threshold)
    else:
        threshold = im.norm(data.max())/2.

    # Set default alignment to center, but allow it to be
    # overwritten by textkw.
    kw = dict(horizontalalignment="center",
              verticalalignment="center")
    kw.update(textkw)

    # Get the formatter in case a string is supplied
    if isinstance(valfmt, str):
        valfmt = matplotlib.ticker.StrMethodFormatter(valfmt)

    # Loop over the data and create a `Text` for each "pixel".
    # Change the text's color depending on the data.
    texts = []
    for i in range(data.shape[0]):
        for j in range(data.shape[1]):
            kw.update(color=textcolors[im.norm(data[i, j]) > threshold])
            text = im.axes.text(j, i, valfmt(data[i, j], None), **kw)
            texts.append(text)

    return texts

def collect(args, output_file=sys.stdout):
    workspace = args.workspace
    
    radius = []
    for r in args.radius:
        radius.append(r)

    dimensions = [args.dimensions]
    
    classification = args.classification

    coefficients = args.coefficients

    kind = args.kind
    
    sizes = []
    for s in args.sizes:
        sizes.append(s)

    threads = []
    for t in args.threads:
            threads.append(t)

    resultsfile = 'results.json'
    pattern = '*-stencil.c'
    finaldata = 'finaldata_{}.dat'.format(current_time)
    finaldatapath = os.path.join(workspace, finaldata)


    stencilfiles = os.path.join(workspace, 'stencils')
    stencil_paths = []
    stencil_names = []
    

    # build all names and paths to the stencil files and results/predictions
    for r in radius:
        stencil_paths.append(os.path.join(stencilfiles, str(dimensions[0]) + 'D', str(r) + 'r', classification, kind, coefficients))
        stencil_names.append(str(dimensions[0]) + 'd-' + str(r) + 'r-' + classification + '-' + coefficients + '-' + kind)
    for spath,stencil in zip(stencil_paths, stencil_names):
        with open(os.path.join(spath, resultsfile)) as myFile:
            results = json.load(myFile)
        # get the values of the executions for each of the threads specified
        values = []
        for t in threads:
            values.append(float(results[' '.join(sizes)]['openMP_node'][str(t)]['value']))
        # build the name of the file for the specific dimension passed as argument
        size = '-'.join(sizes)

        # the file we need for the ECM prediciton is the run with 1 thread
        # the file has a naming scheme like the following: 3d-1r-isotropic-constant-star-stencil-36-36-36-1-IvyBridgeEP_E5-2660v2  
        prediciton_pattern_ecm = stencil + '-' + 'stencil' + '-' + size + '-' + str(threads[0]) + '-' + '*'
        prediciton_pattern_roofline = stencil + '-' + 'stencil' + '-' + size + '-' + str(threads[1]) + '*'

        # retrieve the files with the predictions for a certain dimension
        ecmfile = fnmatch.filter(os.listdir(spath), prediciton_pattern_ecm)[0]
        rooflinefile = fnmatch.filter(os.listdir(spath), prediciton_pattern_roofline)[0]

        logging.info('Opening file {} to retrieve ecm data'.format(ecmfile))
        with open(os.path.join(spath, ecmfile)) as myFile:
            data=myFile.read()

        # the line we look for is soemthing like:
        # { 19.0 || 17.0 | 10.0 | 6.0 | 0.0 }
        ecmvalue = float(data.split('cy/CL = ')[1].split('GFLOP/s')[0])
        saturation = float(data.split('saturating at ')[1].split('cores')[0])

        if saturation < 10:
            ecmvalue = ecmvalue * saturation
        else:
            ecmvalue = ecmvalue * 10

        logging.info('Opening file {} to retrieve roofline data'.format(rooflinefile))
        with open(os.path.join(spath, rooflinefile)) as myFile:
            data=myFile.read()

        # the line we look for is soemthing like:
        #Older version of kerncraft
        # Cache or mem bound with 1 core(s)
        # 5.14 GFLOP/s due to L3 transfer bottleneck (bw with from copy benchmark)
        # roofvalue = float(data.split('Cache or mem bound with')[1].split('\n')[1].split('GFLOP/s')[0])
        # Cache or mem bound
        # 5.14 GFLOP/s due to L3 transfer bottleneck (bw with from copy benchmark)
        try:
            roofvalue = float(data.split('Cache or mem bound')[1].split('\n')[1].split('GFLOP/s')[0])
        except:
            #print('CPU bound')
            roofvalue = float(data.split('CPU bound.')[1].split('GFLOP/s')[0].lstrip())

        # printing to file in the format:
        # stencil_name
        # execution_value   ecm_value   roofline_value

        logging.info('Opening file {} to save final data'.format(finaldatapath))
        with open(finaldatapath, "a") as myfile:
            myfile.write(stencil + '\t')
            myfile.write(str(values[len(threads)-1]) + '\t' + str(ecmvalue) + '\t' + str(roofvalue) + '\n')
        
    build_graph(workspace, finaldata)


def percent_error(measure, prediction):
    '''This method calulates the percent error between the experimental and theoretical value
    As widly discussed, the formula to calculate the percent error is as follows:
    %error = (|experimental - theoretical|/ |theoretical|) * 100
    It is used to determine the precision of a calculation, when the results are aiming for known values.
    The experimental is the calculated value, and the theoretical represents the known one
    '''
    experimental = prediction
    theoretical = measure
    #error = ((abs(experimental - theoretical))/theoretical)*100
    error = ((experimental - theoretical)/theoretical)*100
    return error

def percent_error_array(values, model):
    # model = 1 means ecm
    # model = 2 means roofline

    logging.info('Passed values {} to percent_error_array'.format(values))
    if model == 'ecm':
        index = 1
    elif model == 'roofline': #if roofline
        index = 2
    else:
        logging.error("Unkown model {} passed to percent_error_array".format(model))
    #values[0] is the execution value
    #values[1] is the ecm value
    #values[2] is the roofline value

    model_errors = percent_error(float(values[0]), float(values[index]))
    #roofline = percent_error(float(values[0]), float(values[2]))
    logging.info('Values {} returned by percent_error_array'.format(model_errors))
    return model_errors


def build_graph(workspace, finaldata):
    #finaldata = 'finaldata_20180726-1452.dat'
    with open(os.path.join(workspace, finaldata)) as myFile:
        data=myFile.read()

    if data[-1] == '\n':
        data = data[:-1]

    stencils = []
    rows = len(data.split('\n'))

    values = []
    for line in data.split('\n'):
        #the first word of each line is the name of the stencil
        stencils.append(line.split('\t')[0])
        #values contains for each stencil 3 values, so len(values) = len(stencils)
        values.append(line.split('\t')[1:])

    # stencils = ["2d-1r-iso-star-const", "2d-2r-iso-star-const", "2d-3r-iso-star-const", "2d-4r-iso-star-const"]
    models = ["ECM", "Roofline"]

    # matching = np.array([[3.67, 2.66, 4.48, 10.97],
    #                     [1.63, 1.44, 2.78, 8.85]])

    #having only 2 models, we can explicitely use them
    percent_error_ecm = []
    percent_error_roof = []

    for val in values:
        percent_error_ecm.append(percent_error_array(val, 'ecm'))
        percent_error_roof.append(percent_error_array(val, 'roofline'))
        
    #we combine the results of the 2 models, into a single np array
    matching = np.array(percent_error_ecm)
    matching = np.vstack((matching, np.array(percent_error_roof)))
    # local = np.array([])
    # for i in range(1,len(percent_error_values)):
    #     local = np.array(percent_error_values[i])
    #     matching = np.vstack((matching, local))

    # for a in values:

    # print(type(values[0]))
    
    # print(type(matching))
    # exit(1)
    ##########################################################################
    # The above now allows us to keep the actual plot creation pretty compact.
    #

    fig, ax = plt.subplots()

    im, cbar = heatmap(matching, models, stencils, ax=ax,
                        cmap="RdYlGn", cbarlabel="percent error")
    texts = annotate_heatmap(im, valfmt="{x:.2f}")

    fig.tight_layout()
    #plt.show()
    home=os.path.expanduser('~')

    # filename will be something like heatmap_2d-iso-star-const
    # 2d-iso-star-const must be taken from the stencils array
    head = stencils[0].split('-', 1)[0]
    tail = stencils[0].split('-', 1)[1].split('-', 1)[1]

    stencilfilename =  head + '-' + tail
    filename = 'heatmap_{}.pdf'.format(finaldata.split('_')[1].split('.')[0])
    filepath = os.path.join(workspace, filename)
    fig.savefig(filepath, format="pdf", dpi=1200)

    figs_dir = os.path.join(workspace, 'figs')
    try:
        os.makedirs(figs_dir)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise
    filename = 'heatmap_{}.pdf'.format(stencilfilename)
    filepath = os.path.join(figs_dir, filename)
    fig.savefig(filepath, format="pdf", dpi=1200)
    

# fig, ax = plt.subplots()
# im = ax.imshow(matching)

# # We want to show all ticks...
# ax.set_xticks(np.arange(len(stencils)))
# ax.set_yticks(np.arange(len(models)))
# # ... and label them with the respective list entries
# ax.set_xticklabels(stencils)
# ax.set_yticklabels(models)

# # Rotate the tick labels and set their alignment.
# plt.setp(ax.get_xticklabels(), rotation=45, ha="right",
#          rotation_mode="anchor")

# # Loop over data dimensions and create text annotations.
# for i in range(len(models)):
#     for j in range(len(stencils)):
#         text = ax.text(j, i, matching[i, j],
#                        ha="center", va="center", color="w")

# ax.set_title("Prediction/execution absolute percent variance heatmap")
# fig.tight_layout()
# plt.show()








#############################################################################
# Some more complex heatmap examples
# ----------------------------------
#
# In the following we show the versitality of the previously created
# functions by applying it in different cases and using different arguments.
#

# np.random.seed(19680801)

# fig, ax = plt.subplots()

# # Replicate the above example with a different font size and colormap.

# im, cbar = heatmap(matching, models, stencils, ax=ax,
#                 cmap="Wistia", cbarlabel="absolute percent variance [prediction/execution]")
# annotate_heatmap(im, valfmt="{x:.1f}", size=7)

# plt.tight_layout()
# plt.show()
# Create some new data, give further arguments to imshow (vmin),
# use an integer format on the annotations and provide some colors.

# fig, ax = plt.subplots()
# data = matching#np.random.randint(2, 100, size=(7, 7))
# y = ["{}".format(i) for i in models]
# x = ["{}".format(i) for i in stencils]
# im, cbar = heatmap(data, y, x, ax=ax, vmin=0,
#                 cmap="magma_r", cbarlabel="weekly sold copies")
# annotate_heatmap(im, valfmt="{x:.1f}", size=7, threshold=20,
#                  textcolors=["red", "white"])

# plt.tight_layout()
# plt.show()
# Sometimes even the data itself is categorical. Here we use a
# :class:`matplotlib.colors.BoundaryNorm` to get the data into classes
# and use this to colorize the plot, but also to obtain the class
# labels from an array of classes.

# data = np.random.randn(6, 6)
# y = ["Prod. {}".format(i) for i in range(10, 70, 10)]
# x = ["Cycle {}".format(i) for i in range(1, 7)]

# qrates = np.array(list("ABCDEFG"))
# norm = matplotlib.colors.BoundaryNorm(np.linspace(-3.5, 3.5, 8), 7)
# fmt = matplotlib.ticker.FuncFormatter(lambda x, pos: qrates[::-1][norm(x)])

# im, _ = heatmap(data, y, x, ax=ax3,
#                 cmap=plt.get_cmap("PiYG", 7), norm=norm,
#                 cbar_kw=dict(ticks=np.arange(-3, 4), format=fmt),
#                 cbarlabel="Quality Rating")

# annotate_heatmap(im, valfmt=fmt, size=9, fontweight="bold", threshold=-1,
#                  textcolors=["red", "black"])

# We can nicely plot a correlation matrix. Since this is bound by -1 and 1,
# we use those as vmin and vmax. We may also remove leading zeros and hide
# the diagonal elements (which are all 1) by using a
# :class:`matplotlib.ticker.FuncFormatter`.
# Correlation graph
# corr_matrix = np.corrcoef(np.random.rand(6, 5))
# im, _ = heatmap(corr_matrix, stencils, stencils, ax=ax4,
#                 cmap="PuOr", vmin=-1, vmax=1,
#                 cbarlabel="correlation coeff.")


# def func(x, pos):
#     return "{:.2f}".format(x).replace("0.", ".").replace("1.00", "")

# annotate_heatmap(im, valfmt=matplotlib.ticker.FuncFormatter(func), size=7)


# plt.tight_layout()
# plt.show()

def main():

    logging.info('=== Started ===')
    """This method is the main, it creates a paerser, uses it and runs the
    business logic
    """

    # Create and populate parser
    parser = create_parser()

    # # Parse given arguments
    args = parser.parse_args()

    # # BUSINESS LOGIC
    args.func(args, parser)

    logging.info('Finished')


if __name__ == '__main__':
    main()