set terminal pdf enhanced
set output 'spektrum-2.pdf'

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:512]
set y2tics

plot "../../Messdaten/3er/3erKoinzidenzSZ2offen2.TKA" every ::3 title "" with points, "../../Messdaten/3er/sz2-volles-spektrum.TKA" every ::3 title "SZ2"  with points axis x1y2