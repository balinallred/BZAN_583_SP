#!/bin/bash
#SBATCH --job-name utk
#SBATCH --account=bckj-delta-cpu
#SBATCH --partition=cpu
#SBATCH --mem=20g
#SBATCH --nodes=1
#SBATCH --cpus-per-task=64
#SBATCH --time 02:00:00
#SBATCH -e ./utk.e
#SBATCH -o ./utk.o

cd ~/BZAN_583_SP
pwd

module load r
echo "loaded R"
module list

time Rscript Parallel_Code_Assignment.R --args 64