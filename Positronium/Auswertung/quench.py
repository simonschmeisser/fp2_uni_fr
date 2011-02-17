#! /usr/bin/python
start_channel = 50
end_channel = 150

files = ("../Messdaten/quench/03-nach-2028.TKA",
"../Messdaten/quench/03.TKA",
"../Messdaten/quench/1065-423.TKA",
"../Messdaten/quench/2028-384.TKA",
"../Messdaten/quench/3070-316.TKA",
"../Messdaten/quench/4032.TKA")


for datei in files:
  f = open(datei, "r")
  linenum = -2
  count = 0
  for zeile in f:
    if (start_channel <= linenum) and (linenum <= end_channel):
      count += int(zeile)
    linenum += 1
  
  print datei, ": ", count