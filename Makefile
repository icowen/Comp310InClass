CC = gcc

CFLAGS = -g -Wall

SDIR = src
ODIR = obj

TARGET = main

all: $(TARGET)

$(TARGET): $(SDIR)/$(TARGET).c
	$(CC) $(CFLAGS) -o $(ODIR)/$(TARGET) $(SDIR)/$(TARGET).c

clean:
	$(RM) $(SDIR)/$(TARGET)

run: 
	./$(ODIR)/$(TARGET)
