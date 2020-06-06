ZIGFLAGS=--bundle-compiler-rt
FFI_DIR=ffi
FFI_SRC_DIR=$(FFI_DIR)/zig
OBJ_DIR=$(FFI_DIR)/obj
ZIG_OUT_DIR=$(OBJ_DIR)
ZIG_FFI_BUILD=zig build-lib $(ZIGFLAGS) --output-dir $(ZIG_OUT_DIR)

ffi: hello.zig
	

%.zig:
	$(ZIG_FFI_BUILD) $(FFI_SRC_DIR)/$@

clean:
	rm -rf $(OBJ_DIR)