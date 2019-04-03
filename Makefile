#----------------------------------------------------------
#         Copyright: MR.Black <demonmikalis@google.com>
#         2018-2019 Engineering Department
#         Main Make File For Machine Learning App         
#                   
#                 
#   Use of this software is governed by a License Agreement   
#    ** See the file License for the Conditions of Use  **    
#    **     This banner notice must not be removed      **    
#                                                             
# ----------------------------------------------------------- 
# File: Makefile.  Generated from Makefile.in by configure.
# ----------------------------------------------------------- 
# ./lib/libcaffe.so
CPP = g++
CPPFLAGS = -Wall -g -std=c++11 

LDFLAGS = ./lib/libcaffe.a -lopencv_core -lopencv_highgui -lopencv_imgproc\
-lglog -lprotobuf -lboost_system -lboost_filesystem -lm -lpthread -lgflags -lcublas \
-lcblas -lcuda -lcusolver -lcudart -lcusparse -lhdf5_serial -lcurand -lboost_thread \
-lhdf5_serial_hl


INC = -I/usr/local/include -I/usr/local/cuda-9.0/include -I./include 

object = classification.o
 
all: main

main: $(object) 
	$(CPP) -o $@ $(CPPFLAGS) $^ $(LDFLAGS) $(INC)


%.o: %.cpp
	$(CPP) $(CPPFLAGS) -c -o $@ $< $(INC)

clean:
	rm *.o  main

.PHONY: all



