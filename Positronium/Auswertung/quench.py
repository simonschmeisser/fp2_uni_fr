#! /usr/bin/python
# -*- coding: utf-8 -*-
start_channel = 80
end_channel = 150

def getCounts(datei):
  f = open(datei, "r")
  linenum = -2
  count = 0
  for zeile in f:
    if (start_channel <= linenum) and (linenum <= end_channel):
      count += int(zeile)
    linenum += 1
  return count


datensaetze = (("../Messdaten/quench/03.TKA", 0.3, "03", "03"),
("../Messdaten/quench/1065-423.TKA", 1065.0, "03", "03-nach-2028"),
("../Messdaten/quench/2028-384.TKA", 2028.0, "03-nach-2028", "03"),
#("../Messdaten/quench/03-nach-2028.TKA", 0.3),
("../Messdaten/quench/3070-316.TKA", 3070., "03-nach-2028", "03-nach-4032"),
("../Messdaten/quench/4032.TKA", 4032.0, "03-nach-4032", "03-nach-2028"),
#("../Messdaten/quench/03-nach-4032.TKA", 0.3),
("../Messdaten/quench/5075.TKA", 5075.0, "03-nach-4032", "03-nach-3551"),
("../Messdaten/quench/3551.TKA", 3551.0, "03-nach-3551", "03-nach-4032"),
#("../Messdaten/quench/03-nach-3551.TKA", 0.3),
)#("../Messdaten/quench/4594.TKA", 4594.0, "03-nach-3551", "03-nach-3551"))#,
#("../Messdaten/quench/untergrund.TKA", 0.0))

kontrollmessungen = ("03",
		      "03-nach-2028",
		      "03-nach-4032",
		      "03-nach-3551")
		      

untergrund = getCounts("../Messdaten/quench/untergrund.TKA")

print "untergrund: ", untergrund

outfile = open("quench.dat", "w")

kontrolldict = dict()
for kontroll in kontrollmessungen:
  count = getCounts("../Messdaten/quench/%s.TKA"%(kontroll)) - untergrund
  kontrolldict[kontroll] = count


for datensatz in datensaetze:
  datei, B, kontroll1s, kontroll2s = datensatz
  kontroll1 = kontrolldict[kontroll1s]
  kontroll2 = kontrolldict[kontroll2s]
  count = getCounts(datei) - untergrund
  print datei, ": B= ", B, " counts : ", count, " kontroll1: ", kontroll1, " kontroll2: ", kontroll2, " normiert: ", 3.* count /(2.*kontroll1 + kontroll2)
  outfile.writelines("%i %i %g\n"%( B, count, 3.* count /(2.*kontroll1 + kontroll2)))
  
outfile.close()