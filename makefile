
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png
	rm -f image3omp output3_openmp.png

image2:image2.c image2.h
	gcc -g -o image2pthreads image2.c -lpthread -lm
image3:image3.c image.h
	gcc -g -Wall -fopenmp -o image3omp image3.c -lm
