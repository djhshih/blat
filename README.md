# BLAT: BLAST-Like Alignment Tool

BLAT is a tool for sequence alignment.

This is a fork of the BLAT package (v35) written by Jim Kent. The package has
been restructured to ease compilation and installation. See the `LICENSE.txt`
for conditions of use.

# Remarks

No changes have been made to any of the header or source files.
Therefore, all bugs (e.g. nondeterministic behaviour and memory leaks) are inherited from upstream.

For a BLAT package further stripped down to the minimal set of files and no external dependencies, see [blat-lite](https://github.com/djhshih/blat-lite).

For a minimal implementation of BLAT with the smallest code footprint, see [mlat](https://github.com/djhshih/mlat).

# Installation

Prerequisite: `libpng` library and developmental headers.

If you are on Linux, no setup is necessary, and you can simply

    make

## Other details

If you're on an alpha system, do the following before `make`:

    setenv SOCKETLIB -lxnet

on Solaris, do

    setenv SOCKETLIB "-lsocket -lnsl"

on SunOS, do

    setenv SOCKETLIB "-lsocket -lnsl -lresolv"


The executables will be installed to `bin` within the package directory by default, the header files to `include`, and the libraries to `lib`. You may change `${DESTDIR}` to change the prefix of the install path by:

    DESTDIR=/usr/local make

## Building static executables

See `static-build.md`.

