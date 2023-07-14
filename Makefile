CC = ~/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc

all: UIO_app

app : UIO_app.c
	$(CC) -o $@ $^
clean :
	rm UIO_app
deploy : UIO_app
	scp $^ pi@10.0.0.10:
