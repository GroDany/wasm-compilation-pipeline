OUT = test
OUT_FOLDER = ./bin/

CXX = em++

CFLAGS += -sEXPORTED_FUNCTIONS=_add -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

SRC_FOLDER = ./
SRC = $(SRC_FOLDER)imgui-wasm.cpp

all: clean main

main: $(OUT_FOLDER)
	 $(CXX) $(SRC) -o $(OUT_FOLDER)$(OUT).js $(CFLAGS)

$(OUT_FOLDER):
	 mkdir $(OUT_FOLDER)

clean:
	rm -rf $(OUT_FOLDER)$(OUT).js $(OUT_FOLDER)$(OUT).wasm
	rm -rf $(OUT_FOLDER)
