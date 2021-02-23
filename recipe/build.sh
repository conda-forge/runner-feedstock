#!/bin/bash
cd src
make serial
make mpi
mkdir -p ${PREFIX}/bin
cp RuNNer.serial.x ${PREFIX}/bin
cp RuNNer.mpi.x ${PREFIX}/bin
