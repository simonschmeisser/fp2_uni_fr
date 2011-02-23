set terminal pdf enhanced
set output 'erste.pdf'

g(x) = A * exp(-((x-B)/C)**2)
A =200000
B = 180
C =5
set xlabel "Winkel [°]"
set ylabel "Counts"
fit g(x) "../../Messdaten/2er/erste.dat" using 1:2 every ::::10 via A, B, C

plot "../../Messdaten/2er/erste.dat" using 1:2:(1):(sqrt($2)) every ::::11 with xyerror notitle, g(x) notitle
  
