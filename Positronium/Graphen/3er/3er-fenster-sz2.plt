set terminal pdf enhanced
set output 'red-spektrum-sz2.pdf'

set xlabel "Energie [keV]"
set ylabel "Counts"
set pointsize 0.5


set xrange [0:1500]

plot "../../Messdaten/3er/sz2-volles-spektrum.TKA" every ::3 using ($0*5.10+87.64):1  title "SZ2" with points, "../../Messdaten/3er/sz2-red-spektrum.TKA" every ::3 using ($0*5.10+87.64):1 title "SZ2 red."  with points