#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J Phylogeny
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com


#Load Module 
module load conda
export CONDA_ENVS_PATH=/proj/uppmax2024-2-7/Genome_Analysis/conda_envs
source conda_init.sh
conda activate phylophlan

#Your Command

# Create variables
export outdir=/home/srini16/Genome-Analysis-paper3/raw_data/Phylogency
export configs=/home/srini16/envs/configs

cd $outdir

phylophlan_assign_sgbs -i /home/srini16/Genome-Analysis-paper3/raw_data/metagenome -o /home/srini16/Genome-Analysis-paper3/raw_data/Phylogency --nproc 4 -n 1 -d SGB.Jan21 --database_folder /proj/uppmax2024-2-7/Genome_Analysis/conda_envs/SGB/phylophlan_databases 

