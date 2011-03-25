
set terminal pdf enhanced
set output "biegung-balken3.pdf"

set xlabel "Position [cm]"
set ylabel "Durchbiegung [µm]"

lambda = 0.632 #µm
xoffset = 2 #cm

a = 10.0

a_err = 0.1 

p0 = 0.03

f(x) = p0 * (x**2 *a/2 - x**3/6) + p1*x + p2

set fit errorvariables

fit f(x) "../Photos/digit/IMG_3919-korrigiert-gedreht.csv" every ::1 using ($1/10 + xoffset):($0 * lambda +lambda/2) via p0, p1, p2

plot "../Photos/digit/IMG_3919-korrigiert-gedreht.csv" every ::1 using ($1/10 + xoffset):($0 * lambda +lambda/2) title "gemessene Verbiegung", f(x)

### Berechnung

m = 0.03
m_err = 0.001

F = m * 9.81 #kg *m/s**2

F_err = m_err * 9.81 #kg *m/s**2

b = 1.040 / 100

b_err = 0.05/100

c = 0.51 / 100
c_err = 0.05/100

E = 12 * F / (p0*b*c**3)

E_err = E * sqrt((b_err/b)**2 + (c_err/c)**2 + (p0_err/p0)**2 + (F_err/F)**2)

print "E = (", E/1e9, " \\pm ", E_err/1e9, ")e9 EINHEIT?"
