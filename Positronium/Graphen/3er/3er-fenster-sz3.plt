set terminal pdf enhanced
set output 'red-spektrum-sz3.pdf'

set xlabel "Energie [keV]"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:1500]

plot "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 using ($0*4.51+63.79):1 title "SZ3" with points, "../../Messdaten/3er/sz3-red-spektrum.TKA" every ::3 using ($0*4.51+63.79):1 title "SZ3 red."  with points


set output 'red-spektrum-sz3-ohne-energie.pdf'

set xrange [0:512]

plot "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3" with points, "../../Messdaten/3er/sz3-red-spektrum.TKA" every ::3 title "SZ3 red."  with points