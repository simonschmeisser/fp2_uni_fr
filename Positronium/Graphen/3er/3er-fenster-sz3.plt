set terminal pdf enhanced
set output 'red-spektrum-sz3.pdf'

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:512]

plot "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3" with points, "../../Messdaten/3er/sz3-red-spektrum.TKA" every ::3 title "SZ3 red."  with points