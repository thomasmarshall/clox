SRCS := $(wildcard src/*.c)
OBJS := $(SRCS:src/.c=.o)

clox: $(OBJS)
	gcc -o $@ $^ -I.

%.o: %.c
	gcc -c $< -o $@