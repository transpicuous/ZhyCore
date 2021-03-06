#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS =  -Wall -fexceptions -std=c++11 -lwsock32
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB) -lz -pthread -lrt
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/ZhyCore

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR) -lz -pthread -lrt
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/ZhyCore

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/scheduler/ThreadPool.o $(OBJDIR_DEBUG)/Main.o $(OBJDIR_DEBUG)/src/Debuger.o $(OBJDIR_DEBUG)/src/ExtraFuncs.o $(OBJDIR_DEBUG)/src/raknet/Session.o $(OBJDIR_DEBUG)/src/raknet/SessionManager.o $(OBJDIR_DEBUG)/src/raknet/lib/cross_platform_socket.o $(OBJDIR_DEBUG)/src/raknet/lib/udpsocket.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/scheduler/ThreadPool.o $(OBJDIR_RELEASE)/Main.o $(OBJDIR_RELEASE)/src/Debuger.o $(OBJDIR_RELEASE)/src/ExtraFuncs.o $(OBJDIR_RELEASE)/src/raknet/Session.o $(OBJDIR_RELEASE)/src/raknet/SessionManager.o $(OBJDIR_RELEASE)/src/raknet/lib/cross_platform_socket.o $(OBJDIR_RELEASE)/src/raknet/lib/udpsocket.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/src/scheduler || mkdir -p $(OBJDIR_DEBUG)/src/scheduler
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src
	test -d $(OBJDIR_DEBUG)/src/raknet || mkdir -p $(OBJDIR_DEBUG)/src/raknet
	test -d $(OBJDIR_DEBUG)/src/raknet/lib || mkdir -p $(OBJDIR_DEBUG)/src/raknet/lib

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/scheduler/ThreadPool.o: src/scheduler/ThreadPool.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/scheduler/ThreadPool.cpp -o $(OBJDIR_DEBUG)/src/scheduler/ThreadPool.o

$(OBJDIR_DEBUG)/Main.o: Main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Main.cpp -o $(OBJDIR_DEBUG)/Main.o

$(OBJDIR_DEBUG)/src/Debuger.o: src/Debuger.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Debuger.cpp -o $(OBJDIR_DEBUG)/src/Debuger.o

$(OBJDIR_DEBUG)/src/ExtraFuncs.o: src/ExtraFuncs.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/ExtraFuncs.cpp -o $(OBJDIR_DEBUG)/src/ExtraFuncs.o

$(OBJDIR_DEBUG)/src/raknet/Session.o: src/raknet/Session.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/raknet/Session.cpp -o $(OBJDIR_DEBUG)/src/raknet/Session.o

$(OBJDIR_DEBUG)/src/raknet/SessionManager.o: src/raknet/SessionManager.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/raknet/SessionManager.cpp -o $(OBJDIR_DEBUG)/src/raknet/SessionManager.o

$(OBJDIR_DEBUG)/src/raknet/lib/cross_platform_socket.o: src/raknet/lib/cross_platform_socket.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/raknet/lib/cross_platform_socket.cpp -o $(OBJDIR_DEBUG)/src/raknet/lib/cross_platform_socket.o

$(OBJDIR_DEBUG)/src/raknet/lib/udpsocket.o: src/raknet/lib/udpsocket.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/raknet/lib/udpsocket.cpp -o $(OBJDIR_DEBUG)/src/raknet/lib/udpsocket.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/src/scheduler
	rm -rf $(OBJDIR_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/src
	rm -rf $(OBJDIR_DEBUG)/src/raknet
	rm -rf $(OBJDIR_DEBUG)/src/raknet/lib

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/src/scheduler || mkdir -p $(OBJDIR_RELEASE)/src/scheduler
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src
	test -d $(OBJDIR_RELEASE)/src/raknet || mkdir -p $(OBJDIR_RELEASE)/src/raknet
	test -d $(OBJDIR_RELEASE)/src/raknet/lib || mkdir -p $(OBJDIR_RELEASE)/src/raknet/lib

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/src/scheduler/ThreadPool.o: src/scheduler/ThreadPool.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/scheduler/ThreadPool.cpp -o $(OBJDIR_RELEASE)/src/scheduler/ThreadPool.o

$(OBJDIR_RELEASE)/Main.o: Main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Main.cpp -o $(OBJDIR_RELEASE)/Main.o

$(OBJDIR_RELEASE)/src/Debuger.o: src/Debuger.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Debuger.cpp -o $(OBJDIR_RELEASE)/src/Debuger.o

$(OBJDIR_RELEASE)/src/ExtraFuncs.o: src/ExtraFuncs.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/ExtraFuncs.cpp -o $(OBJDIR_RELEASE)/src/ExtraFuncs.o

$(OBJDIR_RELEASE)/src/raknet/Session.o: src/raknet/Session.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/raknet/Session.cpp -o $(OBJDIR_RELEASE)/src/raknet/Session.o

$(OBJDIR_RELEASE)/src/raknet/SessionManager.o: src/raknet/SessionManager.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/raknet/SessionManager.cpp -o $(OBJDIR_RELEASE)/src/raknet/SessionManager.o

$(OBJDIR_RELEASE)/src/raknet/lib/cross_platform_socket.o: src/raknet/lib/cross_platform_socket.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/raknet/lib/cross_platform_socket.cpp -o $(OBJDIR_RELEASE)/src/raknet/lib/cross_platform_socket.o

$(OBJDIR_RELEASE)/src/raknet/lib/udpsocket.o: src/raknet/lib/udpsocket.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/raknet/lib/udpsocket.cpp -o $(OBJDIR_RELEASE)/src/raknet/lib/udpsocket.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/src/scheduler
	rm -rf $(OBJDIR_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/src
	rm -rf $(OBJDIR_RELEASE)/src/raknet
	rm -rf $(OBJDIR_RELEASE)/src/raknet/lib

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

