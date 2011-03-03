set terminal pdf enhanced
set output 'quench.pdf'

set xlabel "B [G]"
set ylabel "Counts"

plot "quench.dat" using 1:2

set output "quench-normiert.pdf"

r = 1115

mu = 0.5788e-8

delta_W = 8.412e-4

A = r * ( 2 * mu / delta_W)**2

t(x) = 0.5 + 0.5/(1+A*x**2)

kontrollave = 238.25

f(x) = 0.5 + 0.5/(1+A_fit*x**2)
f2(x) = 0.5 + 0.5/(1+A_fit2*x**2)

A_fit = A

A_fit2 = A

fit f(x) "quench.dat" using 1:3 via A_fit
fit f2(x) "quench.dat" using 1:($2/kontrollave) via A_fit2

plot "quench.dat" using 1:3, t(x), f(x), f2(x)

print "A aus Fit mit angepasster Normierung: "
print A_fit

delta_W_fit = sqrt(r/A_fit)*2*mu
print "delta_W_theorie: ", delta_W
print "delta_W_fit: ", delta_W_fit
print "Fehler: ", delta_W_fit-delta_W
print "Fehler relativ: ", (delta_W_fit-delta_W)/delta_W

print "--------------------"

print "A aus Fit mit fester Normierung: "
print A_fit2

delta_W_fit2 = sqrt(r/A_fit2)*2*mu
print "delta_W_theorie: ", delta_W
print "delta_W_fit2: ", delta_W_fit2
print "Fehler: ", delta_W_fit2-delta_W
print "Fehler relativ: ", (delta_W_fit2-delta_W)/delta_W
