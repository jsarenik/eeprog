CFLAGS ?= -g -O2
CFLAGS += -I. -Wall

all: eeprog

clean:
	-rm -f eeprog eeprog-static eeprog.o 24cXX.o

eeprog: eeprog.o 24cXX.o

eeprog-static: eeprog.o 24cXX.o
	$(CC) -static -o $@ $?
