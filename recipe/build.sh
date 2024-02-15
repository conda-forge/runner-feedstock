#!/bin/bash
mkdir -p ${PREFIX}/bin
cd src-devel

make -f Makefile serial
cp RuNNer.serial.x ${PREFIX}/bin
make -f Makefile clean

make -f Makefile mpi
cp RuNNer.mpi.x ${PREFIX}/bin
