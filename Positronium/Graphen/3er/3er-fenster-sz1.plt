set terminal pdf enhanced
set output 'red-spektrum-sz1.pdf'

datafile = "../../Messdaten/3er/sz1-volles-spektrum.TKA"
datafile_red = "../../Messdaten/3er/sz1-red-spektrum.TKA"
sz = "SZ1"
szred = "SZ1 red"

x0511 = 60
s511 = 5
A511 = 5500
xmin511 = 55 
xmax511 = 75


x01275 = 185
s1275 = 5
A1275 = 600
xmin1275 = 180
xmax1275 = 190

load "3er-fenster.plt"