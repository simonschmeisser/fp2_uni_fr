set terminal pdf enhanced
set output 'spektrum_1065.pdf'

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5

g(x) = A * exp(-(B-x)**2/(2*C))

B = 110

fit g(x) "../../Messdaten/quench/1065-423.TKA" every ::3 via A, B, C


set xrange [0:512]

set y2tics

plot g(x), "../../Messdaten/quench/1065-423.TKA" every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2