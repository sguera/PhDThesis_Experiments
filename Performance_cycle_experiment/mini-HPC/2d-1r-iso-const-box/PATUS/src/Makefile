#
# Makefile for Patus stencil benchmark
#
# Note: $(PATUS_*) variables will be automatically replaced by the
# required runtime files by Patus.
#

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S), Darwin)
	CC = /usr/local/bin/gcc
	GNUPLOT = /Applications/Gnuplot.app/Contents/Resources/bin/gnuplot
else
	CC = gcc
	GNUPLOT = gnuplot
endif

CFLAGS = -O3 -g -mavx -fopenmp -I.


bench: kernel.o driver.o timer.o util.o
	$(CC) $(CFLAGS) -o $@ $+ -lm

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

tune:
ifndef M_MAX
	@echo For tuning, the value of M_MAX must be specified. E.g. 'make tune M_MAX=100'
	@false
endif
ifndef N_MAX
	@echo For tuning, the value of N_MAX must be specified. E.g. 'make tune N_MAX=100'
	@false
endif

	java -jar /users/staff/ifi/guerrera/.local/easybuild/software/PATUS/0.1.4-Java-1.7.0_79/bin/patus.jar autotune bench $(M_MAX) $(N_MAX) @EXAMPLE_CB_X=\(\(\$$0-2\)/4\),\(\(\$$0-2\)/2\),\(\$$0-2\) @EXAMPLE_CB_Y=4:4:\(\$$1-2\) @EXAMPLE_CHUNK=1,2,4 @EXAMPLE__UNROLL_P3=0:1:4  | tee `date +tune_%F_%H.%M.%S.txt`

plot:
	for f in *.data; do echo "set term png; set view map; splot \"$$f\" matrix with image" | $(GNUPLOT) > $${f%.data}.png; done

clean:
	rm -rf *.o bench
