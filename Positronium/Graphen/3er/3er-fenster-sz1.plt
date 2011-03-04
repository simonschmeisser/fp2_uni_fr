set terminal pdf enhanced
set output 'red-spektrum-sz1.pdf'

set xlabel "Energie [keV]"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:1500]

plot "../../Messdaten/3er/sz1-volles-spektrum.TKA" every ::3 using ($0*6.03+74.77):1 with points title "SZ1", "../../Messdaten/3er/sz1-red-spektrum.TKA" every ::3 using ($0*6.03+74.77):1 with points title "SZ1 red." 