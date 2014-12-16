#!/bin/sh
#PBS -lnodes=2:ppn=16
#PBS -lwalltime=24:00:00

cd $PBS_O_WORKDIR
mpirun -np 16 -bynode -bind-to-core -cpus-per-proc 2 python example_in_vivo_polytrode.py --quiet
wait