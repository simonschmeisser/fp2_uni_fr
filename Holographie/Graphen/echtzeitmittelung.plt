set terminal pdf enhanced
set output "echtzeitmittelung.pdf"

set xrange [0:30]
set xlabel "Phasenverschiebung {/Symbol d}"
set ylabel "Intensität"

M(x) = 1- besj0(x)

M_2(x) = (sin(x))**2

plot M(x)  title "1-J_0({/Symbol d})", M_2(x) title "sin^2({/Symbol d})"
