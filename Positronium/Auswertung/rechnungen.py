#! /usr/bin/python
# -*- coding: utf-8 -*-
from math import *

#Zufällige Koinzidenzen
n_sz2 = 197906 / 100.0
n_sz3 = 188591 / 100.0
tau = 3.38e-9*10

n = tau*n_sz2*n_sz3
print "Zufällige Koinzidenzen: ", n

print "Fehler: ", n*(1./sqrt(n_sz2)+1./sqrt(n_sz3))

print "90 Grad:", 167.0/100, " pm ", sqrt(167.0)/100

print "falsches Delay: ", 19./1000, " pm ", sqrt(19.0)/1000

print "Fehlerrechnung erste Energieeichung"

def print_errors(x01275, x01275_err, x0511, x0511_err):
  xscale = (1275-511)/(x01275-x0511)
  xscale_error = xscale/(x01275-x0511)*sqrt(x01275_err**2+x0511_err**2)
  print "xscale: %.4g \\pm %.3g" %(xscale, xscale_error)


  xoffset = 511-x0511*xscale
  xoffset_error = sqrt( (xscale*x0511_err)**2 + (xscale_error*x0511)**2 )
  print "xoffset= %.3g \\pm %.3g" %( xoffset, xoffset_error)

print "SZ1: "
print_errors(199.2, 0.1, 72.4, 0.1)
print "SZ2: "
print_errors(233., 0.03, 83.1, 0.1)
print "SZ3: "
print_errors(268.4, 0.1, 99.1, 0.1)
