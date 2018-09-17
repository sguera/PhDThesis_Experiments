GCC = gcc
LDFLAGS= 
# gnu
OMP_FLAG = -fopenmp 

SRC = example.c 
PROJECT_NAME = project

all: module

module: $(SRC)
	$(GCC) $(OMP_FLAG) $+ ${LDFLAGS} -o ../bin/$(PROJECT_NAME)

.PHONY: clean

clean:
	rm -rf ../bin/$(PROJECT_NAME) *~
