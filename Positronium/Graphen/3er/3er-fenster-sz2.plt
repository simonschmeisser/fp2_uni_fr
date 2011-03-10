set terminal pdf enhanced
set output 'red-spektrum-sz2.pdf'

datafile = "../../Messdaten/3er/sz2-volles-spektrum.TKA"
datafile_red = "../../Messdaten/3er/sz2-red-spektrum.TKA"
sz = "SZ2"
szred = "SZ2 red"

A511 = 8500
x0511 = 55
xmin511 = 50
xmax511 = 65 
x01275 = 162
xmin1275 = 150
xmax1275 = 170
A1275 =980
s1275 = 13


set xlabel "Energie [keV]"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:1500]


g511(x) = A511 * exp(-(x-x0511)**2/(2*s511**2))

fit [xmin511:xmax511] g511(x)  datafile every ::3 via A511, x0511, s511

g1275(x) = A1275 * exp(-(x-x01275)**2/(2*s1275**2))

fit [xmin1275:xmax1275] g1275(x)  datafile every ::3 via A1275, x01275#, s1275

######## Eichung berechnen ##############
xscale = (1275-511)/(x01275-x0511)
print "xscale: ", xscale
xscale_error = (1275-511)/(s1275+s511)
print "error: ", xscale_error
#todo: nochmal nachrechnen

xoffset = 511-x0511*xscale
print xoffset

#plot datafile every ::3 using 0:1 with points title sz, datafile_red every ::3 using 0:1 with points title szred ,  g511(x), g1275(x)

plot datafile every ::3 using ($0*xscale+xoffset):1 with points title sz, datafile_red every ::3 using ($0*xscale+xoffset):1 with points title szred