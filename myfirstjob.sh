#PBS -S /bin/bash

#PBS -q devel
#PBS -l select=1:model=has
#PBS -l walltime=00:05:00
#PBS -N myfirstjob
#PBS -j oe 
#PBS -m e
#PBS -koed

#module use -a /nasa/modulefiles/testing
#module load comp-intel/2020.2.254
#module load python3-intel/2020.0.014

cd $PBS_O_WORKDIR

echo $SHELL
conda --version
conda list

poetry shell
poetry install
poetry run python do_calculation.py
