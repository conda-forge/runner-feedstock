#!/bin/bash
# create working directory
mkdir -p ${PREFIX}/bin
cd src-devel

# export flags
export FFLAGS="${FFLAGS} -fallow-argument-mismatch"
export LDFLAGS="${LDFLAGS} -llapack -lblas -lcblas -fopenmp"

# serial version
make FC=${FC} DEBUG=OFF MKL=OFF PROGRAM=RuNNer.serial.x
cp RuNNer.serial.x ${PREFIX}/bin
make clean

# mpi parallel version
make FC=${FC} DEBUG=OFF MKL=OFF PROGRAM=RuNNer.mpi.x
cp RuNNer.mpi.x ${PREFIX}/bin
