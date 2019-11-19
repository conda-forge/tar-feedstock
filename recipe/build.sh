#!/bin/sh

set -e

mkdir -p $PREFIX/lib
FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=$PREFIX
make
make check || (cat tests/testsuite.log && exit 1)
make install
make installcheck
