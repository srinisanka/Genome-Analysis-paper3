#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J CheckM_QC
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

# Load modules
module load bioinfo-tools
module load  CheckM/1.0.12

#Your code

checkm lineage_wf -t 4 -x fa --reduced_tree /home/srini16/Genome-Analysis-paper3/raw_data/Binning  /home/srini16/Genome-Analysis-paper3/raw_data/Binning_evaluation
