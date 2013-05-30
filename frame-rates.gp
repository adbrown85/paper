#!/usr/local/bin/gnuplot -persist
set title 'Frame Rates'
set xlabel 'Samples'
set ylabel 'Frames Per Second'
set xtics ( 100, 200, 300, 400, 500 )
plot 'frame-rates.dat' using 1:2 title 'Slicing (attributes)' with linespoints, \
     'frame-rates.dat' using 1:3 title 'Slicing (uniforms)' with linespoints, \
     'frame-rates.dat' using 1:4 title 'Depth-Masking' with linespoints, \
     'frame-rates.dat' using 1:5 title 'Boolean XOR' with linespoints
