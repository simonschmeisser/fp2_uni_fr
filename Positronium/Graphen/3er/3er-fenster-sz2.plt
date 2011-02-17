set terminal pdf enhanced
set output 'red-spektrum-sz2.pdf'

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5


set xrange [0:512]

plot "../../Messdaten/3er/sz2-volles-spektrum.TKA" every ::3 title "SZ2" with points, "../../Messdaten/3er/sz2-red-spektrum.TKA" every ::3 title "SZ2 red."  with points