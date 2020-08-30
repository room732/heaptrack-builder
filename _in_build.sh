#!/bin/bash

set -e
set -u

cd `dirname $0`
ENV_ROOT=`pwd`
. ./env.source

cd /src/heaptrack
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..

make -j$(nproc)
#make heaptrack_gui heaptrack_print
