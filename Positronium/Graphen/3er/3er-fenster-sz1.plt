set terminal pdf enhanced
set output 'red-spektrum-sz1.pdf'

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:512]

plot "../../Messdaten/3er/sz1-volles-spektrum.TKA" every ::3 title "SZ1" with points, "../../Messdaten/3er/sz1-red-spektrum.TKA" every ::3 title "SZ1 red."  with points