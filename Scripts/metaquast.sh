#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Metaquast
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

# Load modules
module load bioinfo-tools
module load quast

#Command

metaquast.py -t 2 /home/srini16/Genome-Analysis-paper3/raw_data/DNA_Assembly/final.contigs.fa -o /home/srini16/Genome-Analysis-paper3/raw_data/Assembly_evaluation --max-ref-number 0
