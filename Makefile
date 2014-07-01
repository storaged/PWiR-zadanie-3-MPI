# The compiler can be replaced to mpicc.
CC          := mpicc
CFLAGS      := -Wall -O3 -c -Werror
LFLAGS      := -Wall -O3

ALL 	    := laplace-par-asynch.exe

all : $(ALL)


%.exe : %.o
	$(CC) $(LFLAGS) -o $@ $< -lm


%.o : %.c laplace-common.h laplace-common-impl.h
	$(CC) $(CFLAGS) $< -lm


clean :
	rm -f *.o $(ALL)

