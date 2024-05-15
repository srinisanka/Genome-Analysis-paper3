#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J FastQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

#load modules
module load bioinfo-tools
module load FastQC

#Commands

fastqc -o /home/srini16/Genome-Analysis-paper3/raw_data/FASTQC/RNA_trimmed_fastqc\  
          /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342137_1P.fastq.gz SRR4342137_2P.fastq.gz
          /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_1P.fastq.gz SRR4342139_2P.fastq.gz 
echo "FastQC analysis completed."
