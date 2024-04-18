#!/bin/bash
#SBATCH --job-name utk
#SBATCH --account=bckj-delta-cpu
#SBATCH --partition=cpu
#SBATCH --mem=16g
#SBATCH --cpus-per-task=1
#SBATCH --time 00:00:30
#SBATCH -e ./utk.e
#SBATCH -o ./utk.o

cd ~/BZAN_583_SP
pwd

## module names can vary on different platforms
module load r
echo "loaded R"
module list

time Rscript Parallel_Code_Assignment.R --args 1
time Rscript Parallel_Code_Assignment.R --args 2
time Rscript Parallel_Code_Assignment.R --args 4
time Rscript Parallel_Code_Assignment.R --args 8
time Rscript Parallel_Code_Assignment.R --args 16