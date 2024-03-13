CC = g++
CFLAGS = -std=c++11
OPENCV_LIBS = `pkg-config --libs opencv4`
OPENCV_CFLAGS = `pkg-config --cflags opencv4`

all: vision

vision: vision.cc
	$(CC) $(CFLAGS) $(OPENCV_CFLAGS) vision.cc -o vision $(OPENCV_LIBS)

clean:
	rm -f vision
