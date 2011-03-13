
set xlabel "Energie [keV]"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:1500]


g511(x) = A511 * exp(-(x-x0511)**2/(2*s511**2))

set fit errorvariables
fit [xmin511:xmax511] g511(x)  datafile every ::3 via A511, x0511, s511

g1275(x) = A1275 * exp(-(x-x01275)**2/(2*s1275**2))


fit [xmin1275:xmax1275] g1275(x)  datafile every ::3 via A1275, x01275, s1275
######## Fit parameter ##########

print "x0511: ", x0511, " \\pm ", x0511_err
print "x01275: ", x01275, " \\pm ", x01275_err 


######## Eichung berechnen ##############
xscale = (1275-511)/(x01275-x0511)
xscale_error = xscale/(x01275-x0511)*sqrt(x01275_err**2+x0511_err**2)
print "xscale: ", xscale, " \\pm ", xscale_error


xoffset = 511-x0511*xscale
xoffset_error = sqrt( (xscale*x0511_err)**2 + (xscale_error*x0511)**2 )
print "xoffset= ", xoffset, " \\pm ", xoffset_error


#plot datafile every ::3 using 0:1 with points title sz, datafile_red every ::3 using 0:1 with points title szred ,  g511(x), g1275(x)

plot datafile every ::3 using ($0*xscale+xoffset):1 with points title sz, datafile_red every ::3 using ($0*xscale+xoffset):1 with points title szred