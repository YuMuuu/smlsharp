#!/bin/sh
export LDFLAGS="-L/opt/homebrew/opt/massivethreads/lib"
export CPPFLAGS="-I/opt/homebrew/opt/massivethreads/include"
export LDFLAGS="-L/opt/homebrew/opt/gmp/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/gmp/include $CPPFLAGS"
export LLVM_CONFIG="/opt/homebrew/Cellar/llvm/19.1.3/bin/llvm-config"

autoreconf -i

# make clean

./configure --build=aarch64-apple-darwin \
 --host=aarch64-apple-darwin \
 --with-llvm=/opt/homebrew/opt/llvm \
 --with-myth=/opt/homebrew/opt/massivethreads

 make --disable-option-checking -d

 make install