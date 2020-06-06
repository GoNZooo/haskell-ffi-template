const std = @import("std");
const debug = std.debug;

export fn helloWorld() callconv(.C) void {
    debug.warn("Hello from Zig!\n", .{});
}
