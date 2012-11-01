#include $(MAKELIB)/gcc-3.0.mak 
include ../../macro.mak
CXXFLAGS = -g #-Wall
CPPFLAGS = -I../src 
LOADLIBES = -lstdc++
VPATH = ../src
#CC = $(HOME)/local/bin/gcc
#CXX = $(HOME)/local/bin/g++
MAKEDEPEND = $(CC) -M
OBJS = gp_plot.o gp_base.o gp_components.o process.o

all: demo1 demo2 demo3

demo1: demo1.o $(OBJS)
#	$(CC) $^ $(CXXFLAGS) $(CPPFLAGS) $(LOADLIBES) -o $@

demo2: demo2.o $(OBJS)
#	$(CC) $^ $(CXXFLAGS) $(CPPFLAGS) $(LOADLIBES) -o $@

demo3: demo3.o $(OBJS)
#	$(CC) $^ $(CXXFLAGS) $(CPPFLAGS) $(LOADLIBES) -o $@

demo1.o demo2.o demo3.o $(OBJS): #gnuplot.h gp_base.h gp_components.h gp_plot.h

clean::
	-rm -f $(OBJS) demo1.o demo2.o demo3.o *.d

veryclean:: clean
	-rm -f  demo1 demo2 demo3

include $(MAKELIB)/depend.mak

.PHONY: veryclean clean distclean
