# Old fashioned makefile

# default: das erste:
all: build/htldemo

build/htldemo.o: source/htldemo.c
	mkdir -p build
	cc -c source/htldemo.c -o build/htldemo.o

build/htldemo: build/htldemo.o
	cc build/htldemo.o -lhpdf -lm -o build/htldemo

run: all
	cd build ; ./htldemo

clean:
	rm -rf build
