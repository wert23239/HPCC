#!/bin/bash -login
#PBS -l nodes=1:ppn=1,walltime=16:00:00
#PBS -l mem=2gb
#PBS -j oe
#PBS -t 000-099

cd HPCCTESTS/
module swap GNU GNU/4.8.3
./MABE -f settings* -p GLOBAL-updates 10000 ARCHIVIST_LODWAP-dataFileName Data_"$PBS_ARRAYID".csv ARCHIVIST_LODWAP-genomeFileName Genome_"$PBS_ARRAYID".csv
