#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

# Load modules
module load bioinfo-tools
module load MetaBat

# Your commands

metabat2 -t 2 -i /home/srini16/Genome-Analysis-paper3/raw_data/DNA_Assembly/final.contigs.fa  -o /home/srini16/Genome-Analysis-paper3/raw_data/Binning

