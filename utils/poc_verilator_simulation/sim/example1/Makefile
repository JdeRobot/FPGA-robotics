MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
SIM_DIR := $(realpath $(dir $(MKFILE_PATH))/..)
PROJECT_DIR := $(realpath $(SIM_DIR)/..)
IMGUI_DIR = $(SIM_DIR)/third_party/imgui
RTL_DIR = $(PROJECT_DIR)/rtl/example1
INC_DIR = $(SIM_DIR)/example1/include
SRC_DIR = $(SIM_DIR)/example1/src
ASSETS_DIR := $(SRC_DIR)
SOURCES = $(SRC_DIR)/main.cpp
SOURCES += $(IMGUI_DIR)/imgui.cpp $(IMGUI_DIR)/imgui_demo.cpp $(IMGUI_DIR)/imgui_draw.cpp $(IMGUI_DIR)/imgui_tables.cpp $(IMGUI_DIR)/imgui_widgets.cpp
SOURCES += $(IMGUI_DIR)/backends/imgui_impl_sdl.cpp $(IMGUI_DIR)/backends/imgui_impl_opengl3.cpp
V_SOURCES = $(RTL_DIR)/TopPixelProcessor.v
UNAME_S := $(shell uname -s)
LINUX_GL_LIBS = -lGL

CXXFLAGS = -I$(INC_DIR) -I$(IMGUI_DIR) -I$(IMGUI_DIR)/backends -DASSETS_DIR=\\\"$(ASSETS_DIR)\\\" -g
LIBS =

##---------------------------------------------------------------------
## BUILD FLAGS PER PLATFORM
##---------------------------------------------------------------------

ifeq ($(UNAME_S), Linux) #LINUX
	ECHO_MESSAGE = "Linux"
	LIBS += $(LINUX_GL_LIBS) -ldl `sdl2-config --libs`

	CXXFLAGS += `sdl2-config --cflags`
	CFLAGS = $(CXXFLAGS)
endif

ifeq ($(UNAME_S), Darwin) #APPLE
	ECHO_MESSAGE = "Mac OS X"
	LIBS += -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo `sdl2-config --libs`
	LIBS += -L/usr/local/lib -L/opt/local/lib

	CXXFLAGS += `sdl2-config --cflags`
	CXXFLAGS += -I/usr/local/include -I/opt/local/include
	CFLAGS = $(CXXFLAGS)
endif

ifeq ($(OS), Windows_NT)
    ECHO_MESSAGE = "MinGW"
    LIBS += -lgdi32 -lopengl32 -limm32 `pkg-config --static --libs sdl2`

    CXXFLAGS += `pkg-config --cflags sdl2`
    CFLAGS = $(CXXFLAGS)
endif

##---------------------------------------------------------------------
## BUILD RULES
##---------------------------------------------------------------------

all: obj_dir/VTopPixelProcessor
	@echo Build complete for $(ECHO_MESSAGE)

obj_dir/VTopPixelProcessor.h: $(V_SOURCES)
	verilator --cc $(V_SOURCES) -x-assign unique --trace -CFLAGS "$(CXXFLAGS)" --exe $(SOURCES)

obj_dir/VTopPixelProcessor: obj_dir/VTopPixelProcessor.h $(SOURCES)
	make -j 4 -C obj_dir/ -f VTopPixelProcessor.mk VTopPixelProcessor LIBS="$(LIBS)"

clean:
	rm -rf obj_dir
