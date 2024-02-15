#!/bin/bash
mkdir -p ${PREFIX}/bin
cd src-devel

make serial
cp RuNNer.serial.x ${PREFIX}/bin
make clean

make mpi
cp RuNNer.mpi.x ${PREFIX}/bin
