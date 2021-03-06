CC = g++
CFLAGS = -g -std=c++11 -pedantic
IPATH = -I/usr/X11/include -I/usr/pkg/include
LPATH = -L/usr/X11/lib -L/usr/pkg/lib
LDPATH = -Wl,-R/usr/pkg/lib 
RM = rm
HEADERS = -Iinclude

SFRAMEWORK = src/framework/Camera.cpp src/framework/PerformanceTimer.cpp src/framework/Keyboard.cpp src/framework/GlutFramework.cpp src/framework/GLerror.cpp

SMATH = src/math/Arcball.cpp 
SWINDOW = src/window/Viewport.cpp
SRENDER = src/render/Render.cpp src/render/Skybox.cpp
SSTREETS = src/streets/Streets.cpp src/streets/Block.cpp src/streets/Construction.cpp src/streets/Building.cpp src/streets/House.cpp
SMATH = src/math/Random.cpp
SLOADER = src/loader/ImageLoader.cpp src/loader/textfile.cpp


SOURCES=main.cpp $(SRENDER) $(SMATH) $(SWINDOW) $(SSTREETS) $(SMATH) $(SLOADER) $(SFRAMEWORK)
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=city

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) -o $@ $^ -lGL -lGLU -lglut -ljpeg -lm -lGLEW $(LPATH)
	
.cpp.o: 
	$(CC) $(CFLAGS) -c -o $@ $^ $(IPATH) $(HEADERS)
	
clean:
	$(RM) -f $(OBJECTS) *.gch $(EXECUTABLE)

	
