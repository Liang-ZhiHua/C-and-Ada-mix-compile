# Mix-C-C-Ada

## __1.Preview__<br />
this is a simple example to run C,C++ and ada code on linux system, where C,C++ file call ada sub-function.

## __2.Element__<br />
main.cpp  -- c++ main file<br />
my_func.c, my_func.h  --  c file to link ada function<br />
c_api.adb,c_api.ads --  ada subfunction<br />

## __3.Specification__<br />
### background
According to adacore tutorial(https://gcc.gnu.org/onlinedocs/gcc-4.6.4/gnat_ugn_unw/A-Simple-Example.html#A-Simple-Example)<br />
to mixup C and ada code, you could use<br />
g++ -c *.cpp  (create *.o object file)<br />
gnatmake c_api  (create .ali and .o file)<br />
gnatbind -n c_api (create b~api tempfile)<br />
gnatlink c_api -o main --LINK=g++ -lstdc++ main.o my_func.o (link ada into executable file)<br />
But there is trouble with gnatlink command, as it cannot calling g++.<br />
The problem seems to be gnatlink's call to the g++ dynamic link library, which is tedious to solve.<br />
### solution
I noticed that gnatlink worked fine with gcc command, but gcc can't compile C++ parts like _Extern "C"_<br />
__In Conclusion, a simple solution is to write a link .c and .h file, and change gnatlink's Linker into gcc.__

An example is provided here.
