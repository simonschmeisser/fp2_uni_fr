
set terminal pdf enhanced
set output "biegung-balken1.pdf"

set xlabel "Position [cm]"
set ylabel "Durchbiegung [µm]"

lambda = 0.632 #µm
xoffset = 3 #cm

f_1(x) = p0_1 * (x**2 *5 - x**3/6) + p2_1# + p1_1*x

fit f_1(x) "../Photos/digit/IMG_3904.csv" every ::1 using 1:($0 * lambda +lambda/2) via p0_1, p2_1#, p1_1

plot "../Photos/digit/IMG_3904.csv" every ::1 using 1:($0 * lambda +lambda/2) title "gemessene Verbiegung", f_1(x)

### Berechnung

F = 0.03 * 9.81 #kg *m/s**2

b = 1.017 / 100

c = 0.533 / 100

E_1 = 12 * F / (p0_1*b*c**3)

print E_1/1e9, "e9"

set output "biegung-balken2.pdf"

f_2(x) = p0_2 * (x**2 *5 - x**3/6) + p1_2*x + p2_2

fit f_2(x) "../Photos/digit/IMG_3904-2.csv" every ::1 using 1:($0 * lambda +lambda/2) via p0_2, p1_2, p2_2

plot "../Photos/digit/IMG_3904-2.csv" every ::1 using 1:($0 * lambda +lambda/2) title "gemessene Verbiegung", f_2(x)

E_2 = 12 * F / (p0_2*b*c**3)

print E_2/1e9, "e9"