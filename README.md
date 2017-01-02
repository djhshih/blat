# CONTENTS AND COPYRIGHT

This archive contains the entire source tree for BLAT and
associated utilities.  All files are copyrighted, but license 
is hereby granted for personal, academic, and non-profit use.  
A license is also granted for the contents of the top level 
lib and inc directories for commercial users.  Commercial 
users should contact jim_kent@pacbell.net for access to other modules.

# INSTALL INSTRUCTIONS

Prerequisite: `libpng` library and developmental headers.

If you are on Linux, no setup is necessary, and you can simply

    make


If you're on an alpha system, do the following before `make`:

    setenv SOCKETLIB -lxnet

on Solaris, do

    setenv SOCKETLIB "-lsocket -lnsl"

on SunOS, do

    setenv SOCKETLIB "-lsocket -lnsl -lresolv"


The executables will be installed to `bin` within the project directory by default, the header files to `include`, and the libraries to `lib`. You may change `${DESTDIR}` to change the prefix of the install path by:

    DESTDIR=/usr/local make
