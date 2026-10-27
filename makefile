orbit:orbit.o
	c++ orbit.o -o orbit -ltrapfpe -lpgplot -lcpgplot -lX11 -lm 
orbit.o:orbit.cpp
	c++ orbit.cpp -c -std=c++11

