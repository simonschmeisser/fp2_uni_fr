#! /usr/bin/python
# -*- coding: utf-8 -*-
start_channel = 80
end_channel = 150

datensaetze = (("../Messdaten/quench/03.TKA", 0.3),
("../Messdaten/quench/1065-423.TKA", 1065.0),
("../Messdaten/quench/2028-384.TKA", 2028.0),
("../Messdaten/quench/03-nach-2028.TKA", 0.3),
("../Messdaten/quench/3070-316.TKA", 3070.),
("../Messdaten/quench/4032.TKA", 4032.0),
("../Messdaten/quench/03-nach-4032.TKA", 0.3),
("../Messdaten/quench/5075.TKA", 5075.0),
("../Messdaten/quench/3551.TKA", 3551.0),
("../Messdaten/quench/03-nach-3551.TKA", 0.3),
("../Messdaten/quench/4594.TKA", 4594.0))#,
#("../Messdaten/quench/untergrund.TKA", 0.0))

outfile = open("quench.dat", "w")

for datensatz in datensaetze:
  datei, B = datensatz
  f = open(datei, "r")
  linenum = -2
  count = 0
  for zeile in f:
    if (start_channel <= linenum) and (linenum <= end_channel):
      count += int(zeile)
    linenum += 1
  
  print datei, ": B= ", B, " counts : ", count
  outfile.writelines("%i %i\n"%( B, count))
  
outfile.close()