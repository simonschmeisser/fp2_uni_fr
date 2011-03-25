
set terminal pdf enhanced
set output "biegung-balken1.pdf"

set xlabel "Position [cm]"
set ylabel "Durchbiegung [µm]"

lambda = 0.632 #µm
xoffset = 3 #cm

f(x) = p0 * (x**2 *5 - x**3/6) + p2# + p1*x

set fit errorvariables

fit f(x) "../Photos/digit/IMG_3904.csv" every ::1 using 1:($0 * lambda +lambda/2) via p0, p2#, p1

plot "../Photos/digit/IMG_3904.csv" every ::1 using 1:($0 * lambda +lambda/2) title "gemessene Verbiegung", f(x)

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