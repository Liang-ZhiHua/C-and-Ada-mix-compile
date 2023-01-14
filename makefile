main:main.o my_func.o b~c_api.adb
	gnatlink c_api -o main --LINK=gcc -lstdc++ main.o my_func.o
my_func.o:my_func.c
	gcc -c my_func.c
main.o:main.cpp
	g++ -c main.cpp
b~c_api.adb:c_api.ali
	gnatbind -n c_api
c_api.ali:c_api.adb
	gnatmake c_api

