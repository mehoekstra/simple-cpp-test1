IDIR =../include
CC=gcc
CFLAGS=-I$(IDIR) -g

ODIR=obj
LDIR =../lib

LIBS=-lm

#_DEPS = hellomake.h
#DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = test1.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test1: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(IDIR)/*~