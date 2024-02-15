#!/bin/bash
# create working directory
mkdir -p ${PREFIX}/bin
cd src-devel

# remove other make files
rm GNUmakefile
rm Makefile.orig

# serial version
make serial
cp RuNNer.serial.x ${PREFIX}/bin
make clean

# mpi parallel version
make mpi
cp RuNNer.mpi.x ${PREFIX}/bin
