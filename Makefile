CC = gcc

TARGET = main

SRCS = main.c input.c output.c

OBJS = $(SRCS:.c=.o)

LIBS = mylibs/process.o usr/lib/process1.o

LIB_LIBS = mylibs/libprocess.a usr/lib/libprocess1.a

STATIC = ar rcs

CFLAGS = -Wall -g -O2

LFLAGS = -L./mylibs -L./usr/lib -lprocess -lprocess1

LIB_TYPE = static

all: $(TARGET)

# static lib
ifeq ($(LIB_TYPE), static)
# 1. compile .c to .o
$(LIBS): %.o: %.c
	$(CC) -c $< -o $@ 
# 2. compile .o to .a
$(LIB_LIBS): $(LIBS)
	$(STATIC) $@ $^

# dynamic lib
else
# 5. compile .c to .o
$(LIBS): %.o: %.c
	$(CC) -c -fPIC $< -o $@
# 6. compile .o to .so
$(LIB_LIBS): $(LIBS)
	$(CC) -shared -o $@ $^

# change path to .so
$(LIB_LIBS) = $(LIB_LIBS:.a=.so)

endif

# Compile the main target
$(TARGET): $(OBJS) $(LIB_LIBS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LFLAGS)

clean:
	rm -f $(OBJS) $(TARGET) $(LIBS) $(LIB_LIBS)

.PHONY: all clean