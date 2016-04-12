# Makefile for SmSH - the Smith Shell
# modeled by Nathanael A. Smith after Dr. Vail's Makefile
# also modeled after an example at http://mrbook.org/blog/tutorials/make


# our C compiler
CC=gcc
# the C compiler flags
CFLAGS=-c -Wall

smsh: smsh.o 
	$(CC) -o bin/smsh smsh.o

smsh.o: smsh.h smsh.c
	$(CC) $(CFLAGS) smsh.c

clean: 
	rm *.o bin/*
