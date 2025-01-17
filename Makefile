SRC_DIR = ./
IMGUI_DIR=./imgui/

OUT = test
OUT_DIR = ./bin/

CXX = em++

CFLAGS += -sEXPORTED_FUNCTIONS=_add -sEXPORTED_RUNTIME_METHODS=ccall,cwrap
LIBS = -I$(IMGUI_DIR) -I$(IMGUI_DIR)backends

IMGUI_SRC = $(IMGUI_DIR)/backends/imgui_impl_glfw.cpp \
	$(IMGUI_DIR)/backends/imgui_impl_opengl3.cpp \
	$(IMGUI_DIR)/imgui.cpp \
	$(IMGUI_DIR)/imgui_draw.cpp \
	$(IMGUI_DIR)/imgui_demo.cpp \
	$(IMGUI_DIR)/imgui_widgets.cpp \
	$(IMGUI_DIR)/imgui_tables.cpp

SRC = $(SRC_DIR)imgui-wasm.cpp \


all: clean main

main: $(OUT_DIR)
	$(CXX) $(SRC) $(IMGUI_SRC) -o $(OUT_DIR)$(OUT).js $(CFLAGS) $(LIBS)

$(OUT_DIR):
	mkdir $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR)$(OUT).js $(OUT_DIR)$(OUT).wasm
	rm -rf $(OUT_DIR)
