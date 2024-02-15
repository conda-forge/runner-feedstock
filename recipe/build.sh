#!/bin/bash
# create working directory
mkdir -p ${PREFIX}/bin
cd src-devel

# export flags
export FFLAGS="${FFLAGS} -fallow-argument-mismatch"

# serial version
make PROGRAM=RuNNer.serial.x
cp RuNNer.serial.x ${PREFIX}/bin
make clean

# mpi parallel version
make PROGRAM=RuNNer.mpi.x
cp RuNNer.mpi.x ${PREFIX}/bin
