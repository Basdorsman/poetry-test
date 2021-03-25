#PBS -S /bin/csh

#PBS -q devel
#PBS -l select=1:model=has
#PBS -l walltime=00:05:00
#PBS -N myfirstjob
#PBS -j oe 
#PBS -m bae
#PBS -M b.dorsman@student.uva.nl

module use -a /nasa/modulefiles/testing
module load comp-intel/2020.2.254
module load python3-intel/2020.0.014

cd $PBS_O_WORKDIR

python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python do_calculation.py



