reset
set terminal svg noenhanced
set output '/users/staff/ifi/guerrera/THESIS/provavalidation/3d-2r-point-symmetric-variable-star-stencil/experiments/20180830_174947/graph.svg' 
set auto x
set style data histogram
set style histogram errorbars gap 2 lw 1
set style fill solid border -1
set boxwidth 0.9
set yrange [0:*]
set key autotitle columnheader
set xlabel "Number of Threads"
set key title "Parameters (M_MAX N_MAX P_MAX)"
set ylabel "GFlop/s"
set title "Performance Comparison of Project: 3d-2r-point-symmetric-variable-star-stencil\nImplemented Method: openMP_node"
set key top left
set grid
plot '/users/staff/ifi/guerrera/THESIS/provavalidation/3d-2r-point-symmetric-variable-star-stencil/experiments/20180830_174947/results.dat' using 2:3:4:xtic(1) w hist
