VPATH=src include
.c.o: 
	gcc -c $<
hello: hello.o print.a
	gcc -o $@ $?
hello.o: hello.c
print.a: print.o
	ar rs $@ $<
print.o: print.c
	
	
