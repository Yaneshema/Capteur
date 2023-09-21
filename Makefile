
all: Capteur
	rm -f *.o core
	
message_1.o : message_1.cpp
	g++ -Wall -c message_1.cpp
	rm -f Capteur
	
message_2.o : message_2.cpp
	g++ -Wall -c message_2.cpp
	
main.o : main.cpp
	g++ -Wall -c main.cpp

Class : message_1.o message_2.o main.o message_1.h message_2.h
	g++ -Wall -o Class message_1.o message_2.o main.o message_1.h message_2.h
