#!/bin/bash

source ~/source_gpu_gromacs.sh

export OMP_NUM_THREADS=2

for i in {1..20}
do
        cp -r template run$i
        cd run$i
        gmx_mpi grompp -f prod.mdp -c prod_10ns_ub.gro -p topol.top -n index.ndx -o prod.tpr
	mpiexec -n 1 gmx_mpi mdrun -s prod.tpr -deffnm opes_fl -nsteps 100000000 -plumed plumed.dat
	cd ..
done

