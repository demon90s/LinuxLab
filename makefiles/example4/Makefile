# Makefile 例子（子目录）

# Which compiler
CC = gcc

# Where to install
INSTDIR = ./bin

# Where are include files kept
INCLUDE = .

# Options for development
CFLAGS = -g -Wall

# Options for release
# CFLAGS = -O -Wall

LIBCORE = libcore.a

myapp: main.o bar.o foo.o $(LIBCORE)
	$(CC) -o myapp main.o bar.o foo.o lib/$(LIBCORE)

# Use: gcc -MM *.c 自动生成依赖关系
bar.o: bar.c bar.h common.h lib/core.h
foo.o: foo.c foo.h common.h lib/core.h
main.o: main.c foo.h common.h bar.h
lib/core.o: lib/core.c lib/core.h

# 修改内置后缀模式规则，使其适用于子目录
# D代表目录名，F代表文件名
.c.o:
	$(CC) $(CFLAGS) -c $(@D)/$(<F) -o $(@D)/$(@F)

$(LIBCORE): lib/core.o
	ar -rv lib/$(LIBCORE) $?

clean:
	-rm -f *.o myapp;\
	cd lib; rm -f $(LIBCORE) *.o

install: myapp
	@mkdir -p $(INSTDIR) &&\
	if [ -d $(INSTDIR) ];\
		then\
		cp myapp $(INSTDIR);\
		chmod a+x $(INSTDIR)/myapp;\
		chmod og-w $(INSTDIR)/myapp;\
		echo "Installed in $(INSTDIR)";\
	fi
