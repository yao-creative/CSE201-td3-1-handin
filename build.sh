#!/bin/bash
cmake -G "Ninja" -B ./bin
#-G: generator, -B: builds binaries to bin.
#can check with cmake --help
cmake  --build ./bin
#run build command in the bin.
cp ./bin/run .
#copy the run file from the bin.
./run