#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J 0101_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

# Load modules
module load bioinfo-tools
module load megahit

# Your commands
megahit --kmin-1pass -1 /home/srini16/Genome-Analysis-paper3/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/home/srini16/Genome-Analysis-paper3/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 /home/srini16/Genome-Analysis-paper3/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/home/srini16/Genome-Analysis-paper3/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz -o /home/srini16/Genome-Analysis-paper3/raw_data/DNA_Assembly  --k-list 69,79,89


