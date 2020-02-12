CC = gcc

CFLAGS = -g -Wall -c -o

SDIR = src
ODIR = obj

OBJS = \
	main.o

OBJ = $(patsubst %,$(ODIR)/%,$(OBJS))

$(ODIR)/%.o: $(SDIR)/%.c
	$(CC) $(CFLAGS) $@ $^

all: $(OBJ)
	gcc obj/*.o -o main

clean:
	$(RM) $(SDIR)/$(TARGET)

run: 
	./main
