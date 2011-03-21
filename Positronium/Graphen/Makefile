default: magnetfeld.pdf
	cd quench && $(MAKE)
	cd 3er && $(MAKE)

magnetfeld.pdf: Magnetfeld.plt
	gnuplot Magnetfeld.plt
