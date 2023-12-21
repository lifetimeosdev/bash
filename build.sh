#!/bin/bash

make clean
#./configure --enable-static-link --host=aarch64-linux-gnu --without-bash-malloc
./configure --enable-static-link --without-bash-malloc
find . -name "Makefile" |xargs sed -i 's/-O2/-O0 -g/'
make -j 12
