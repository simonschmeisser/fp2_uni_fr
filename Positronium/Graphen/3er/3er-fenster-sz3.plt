set terminal pdf enhanced
set output 'red-spektrum-sz3-abgeschnitten.pdf'

datafile = "../../Messdaten/3er/sz3-volles-spektrum.TKA"
datafile_red = "../../Messdaten/3er/sz3-red-spektrum.TKA"
sz = "SZ3"
szred = "SZ3 red"


x0511 = 180
s511 = 5
A511 = 5500
xmin511 = 160 
xmax511 = 200

xmin1275 = 340
xmax1275 = 360
x01275 = 350
s1275 = 13
A1275 = 400

load "3er-fenster.plt"

set xrange [-300:1500]

set output 'red-spektrum-sz3.pdf'

replot

x00_error = 70

xscale_1 = (511)/(x0511)
xscale_1_error = xscale/(x0511)*sqrt(x0511_err**2+x00_error**2)
print "xscale_1: ", xscale_1, " \\pm ", xscale_1_error

