#!/bin/bash
# This script sets the environment to use the newly installed compiler.
# It compiles, links and runs a small test program.

# Setup the environment.
MY_GXX_HOME="/opt/gcc483/4.8.3/rtf"
export PATH="${MY_GXX_HOME}/bin:${PATH}"
export LD_LIBRARY_PATH="${MY_GXX_HOME}/lib:${MY_GXX_HOME}/lib64:${LD_LIBRARY_PATH}"
export LD_RUN_PATH="${MY_GXX_HOME}/lib:${MY_GXX_HOME}/lib64:${LD_LIBRARY_PATH}"

# Compile and link.
g++ -O3 -std=c++11 -Wall -o test.exe test.cc

# Run.
./test.exe
# Expected output
# value      : ' hello world! '
# to_upper() : ' HELLO WORLD! '
# trim()     : 'HELLO WORLD!'