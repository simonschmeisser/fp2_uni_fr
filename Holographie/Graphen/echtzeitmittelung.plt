set terminal pdf enhanced
set output "echtzeitmittelung.pdf"

set xrange [0:30]
set xlabel "Phasenverschiebung {/Symbol d}"
set ylabel "Intensität"

M(x) = 1- besj0(x)

plot M(x)  notitle 
