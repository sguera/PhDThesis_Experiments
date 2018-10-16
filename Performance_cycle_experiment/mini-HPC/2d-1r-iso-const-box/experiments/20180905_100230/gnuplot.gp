reset
set terminal svg noenhanced
set output '/users/staff/ifi/guerrera/THESIS_exp/2d-1r-iso-const-box/experiments/20180905_100230/graph.svg' 
set auto x
set style data histogram
set style histogram errorbars gap 2 lw 1
set style fill solid border -1
set boxwidth 0.9
set yrange [0:*]
set key autotitle columnheader
set xlabel "Number of Threads"
set key title "Implemented Method"
set ylabel "GFlop/s"
set title "Performance Comparison of Project: 2d-1r-iso-const-box\nParameters (M_MAX N_MAX T_MAX): 500 500 200"
set key top left
set grid
plot '/users/staff/ifi/guerrera/THESIS_exp/2d-1r-iso-const-box/experiments/20180905_100230/results.dat' using 2:3:4:xtic(1) w hist,\
	'' using 5:6:7:xtic(1)  w hist,\
	'' using 8:9:10:xtic(1)  w hist,\
	'' using 11:12:13:xtic(1)  w hist,\
	'' using 14:15:16:xtic(1)  w hist
