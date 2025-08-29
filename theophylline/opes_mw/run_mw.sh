#!/bin/bash

source ~/source_gpu_gromacs.sh

for i in {1..4}
do
        cp -r template run$i
        cd run$i
        gmx_mpi grompp -f prod.mdp -c prod_10ns_ub.gro -p topol.top -n index.ndx -o prod.tpr
        cd ..
done

mpirun -np 4 gmx_mpi mdrun -s prod.tpr -deffnm opes_mw -nsteps 250000000 -plumed ../plumed.dat -multidir run{1..4}

