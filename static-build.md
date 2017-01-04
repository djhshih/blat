# Building static executables

If you already have static `glibc` libraries (e.g. `libc.a`) available on your
system. Then you can simply at the package directory do

```
CFLAGS="-static -static-libgcc -D_STATIC" make
```

This will build binary static executables for all programs except `webBlat`.

## Nix

The package manager `nix` and the collection `nixpkgs` offers a convenient way
of obtaining the static glibc libraries. However, the `gcc` wrapper distributed
with `nix` appears to be misconfigured for building statically. Therefore, you
should use your system's own `gcc` to build.

First, enter the `nix-shell` to make `glibc-static` available:

```
nix-shell static.nix
```

If your system's `gcc` is located at `/usr/bin/gcc`, you can do.

```
CC="/usr/bin/gcc" CFLAGS="-static -static-libgcc -D_STATIC" make
```

## Known error

If you use the `gcc` from `nix`, you will probably get the following error:

```
../lib/x86_64/jkOwnLib.a(gfBlatLib.o): In function `gfLongDnaInMem':
gfBlatLib.c:(.text+0x3395): undefined reference to `__memcpy_chk'
../lib/x86_64/jkweb.a(twoBit.o): In function `twoBitFromDnaSeq':
twoBit.c:(.text+0x4c4): undefined reference to `__memcpy_chk'
```

