CC = gcc

CFLAGS = -g -Wall -c -o

SDIR = src
ODIR = obj

OBJS = \
	main.o

OBJ = $(patsubst %,$(ODIR)/%,$(OBJS))

TARGET = main

$(ODIR)/%.o: $(SDIR)/%.c
	$(CC) $(CFLAGS) $@ $^

all: $(OBJ)

clean:
	$(RM) $(SDIR)/$(TARGET)

run: 
	./main
