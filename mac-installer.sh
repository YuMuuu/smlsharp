#!/bin/sh
export LDFLAGS="-L/opt/homebrew/opt/massivethreads/lib"
export CPPFLAGS="-I/opt/homebrew/opt/massivethreads/include"
export LDFLAGS="-L/opt/homebrew/opt/gmp/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/gmp/include $CPPFLAGS"

./configure --build=aarch64-apple-darwin \
 --host=aarch64-apple-darwin \
 --with-llvm=/opt/homebrew/opt/llvm \
 --with-myth=/opt/homebrew/opt/massivethreads


 make

 make install