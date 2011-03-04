set terminal pdf enhanced

set xlabel "Channel"
set ylabel "Counts"
set pointsize 0.5

set xrange [0:512]
set trange [0:10]
set y2tics
set parametric

dateiname = "../../Messdaten/quench/03.TKA"
set output 'spektrum_0-3.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/1065-423.TKA"
set output 'spektrum_1065.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/2028-384.TKA"
set output 'spektrum_2028.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/3070-316.TKA"
set output 'spektrum_3070.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/3551.TKA"
set output 'spektrum_3551.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/4032.TKA"
set output 'spektrum_4032.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/4594.TKA"
set output 'spektrum_4594.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################

dateiname = "../../Messdaten/quench/5075.TKA"
set output 'spektrum_5075.pdf'

plot dateiname every ::3 title "Spektrum SZ3" with points, "../../Messdaten/3er/sz3-volles-spektrum.TKA" every ::3 title "SZ3 offen"  with points axes x1y2, 90,t notitle, 130,t notitle

###################################################
