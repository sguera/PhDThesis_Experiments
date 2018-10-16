GCC = gcc
LDFLAGS=
# gnu
OMP_FLAG = -std=c99 -O3 -march=native -mtune=native -ffast-math -funroll-loops -fargument-noalias -fopenmp -D_POSIX_C_SOURCE=200112L

SRC = example.c
PROJECT_NAME = project

all: module

module: $(SRC)
	$(GCC) $(OMP_FLAG) $+ timing.c ${LDFLAGS} -o ../bin/$(PROJECT_NAME)

.PHONY: clean

clean:
	rm -rf ../bin/$(PROJECT_NAME) *~
