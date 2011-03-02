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



