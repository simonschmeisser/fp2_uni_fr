
set terminal pdf enhanced
set output "biegung-balken3.pdf"

set xlabel "Position [cm]"
set ylabel "Durchbiegung [µm]"

lambda = 0.632 #µm
xoffset = 2 #cm

f(x) = p0 * (x**2 *5 - x**3/6) + p1*x + p2

fit f(x) "../Photos/digit/IMG_3919-korrigiert-gedreht.csv" every ::1 using ($1/10 + xoffset):($0 * lambda +lambda/2) via p0, p1, p2

plot "../Photos/digit/IMG_3919-korrigiert-gedreht.csv" every ::1 using ($1/10 + xoffset):($0 * lambda +lambda/2) title "gemessene Verbiegung", f(x)

### Berechnung

F = 0.03 * 9.81 #kg *m/s**2

b = 1.017 / 100

c = 0.533 / 100

E = 12 * F / (p0*b*c**3)

print E/1e9, "e9"
