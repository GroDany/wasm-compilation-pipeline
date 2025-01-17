# wasm-compilation-pipeline

This is a basic boilerplate project for C/C++ library compilation to wasm using emscripten

# How to use

First you need to install `make` and `emscripten`

Assuming you have emscripten in your PATH, at the root of the project just run:
```
    $ make
    $ emrun index.html
```

This should open a browser at `index.html` as well as create a http server to serve the different files for you wasm module.

For the code you can add files to the Makefile `SRC` variable, the functions you export should always be in an `extern "C"` block.
You also need to add all the exported functions in the list in the `EXPORTED_FUNCTIONS` compilation flag in the `Makefile` (dont forget to add `_` as a prefix to the function's name in the list separated with commas).

In the `Makefile` you can edit `CFLAGS` (`CFLAGS += <valid emscripten options>`) to add compilation flags.

# Roadmap
- [ ] Adding different tags to link commonly used libraries
- [ ] Generating the module boilerplate ourselves so we can use other compiler than emscripten
