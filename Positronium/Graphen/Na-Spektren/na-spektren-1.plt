set terminal pdf enhanced
set output 'na-spektren-1.pdf'

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5
plot "../../Messdaten/Na-Spektren/SZ1.TKA" every ::3 title "SZ1" with points, "../../Messdaten/Na-Spektren/SZ2.TKA" every ::3 title "SZ2"  with points, "../../Messdaten/Na-Spektren/SZ3.TKA" every ::3 title "SZ3" with points
