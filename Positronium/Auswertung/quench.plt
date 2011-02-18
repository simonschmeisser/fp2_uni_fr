set terminal pdf enhanced
set output 'quench.pdf'

set xlabel "B [G]"
set ylabel "Counts"

plot "quench.dat"

set output "quench-normiert.pdf"

r = 1115

mu = 0.5788e-8

delta_W = 8.412e-4

A = r * ( 2 * mu / delta_W)**2

t(x) = 0.5 + 0.5/(1+A*x**2)

f(x) = 0.5 + 0.5/(1+A_fit*x**2)

A_fit = A

fit f(x) "quench.dat" using 1:($2/300) via A_fit

plot "quench.dat" using 1:($2/300), t(x), f(x)

print "A aus Fit: "
print A_fit

delta_W_fit = sqrt(r/A_fit)*2*mu
print "delta_W_theorie: ", delta_W
print "delta_W_fit: ", delta_W_fit
print "Fehler: ", delta_W_fit-delta_W
print "Fehler relativ: ", (delta_W_fit-delta_W)/delta_W
