reset
set terminal svg noenhanced
set output '/users/staff/ifi/guerrera/THESIS/provavalidation/2d-1r-point-symmetric-constant-box-stencil/experiments/20180829_142115/graph.svg' 
set auto x
set style data histogram
set style histogram errorbars gap 2 lw 1
set style fill solid border -1
set boxwidth 0.9
set yrange [0:*]
set key autotitle columnheader
set xlabel "Number of Threads"
set key title "Parameters (M_MAX N_MAX)"
set ylabel "GFlop/s"
set title "Performance Comparison of Project: 2d-1r-point-symmetric-constant-box-stencil\nImplemented Method: openMP_node"
set key top left
set grid
plot '/users/staff/ifi/guerrera/THESIS/provavalidation/2d-1r-point-symmetric-constant-box-stencil/experiments/20180829_142115/results.dat' using 2:3:4:xtic(1) w hist
