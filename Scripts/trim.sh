#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

#load modules
module load bioinfo-tools
module load trimmomatic

TRIMMOMATIC_HOME=/sw/bioinfo/trimmomatic/0.39/snowy

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 4 -phred33 \
    /home/srini16/Genome-Analysis-paper3/raw_data/RNA_untrimmed1/RNA_untrimmed/SRR4342139.1.fastq.gz \
    /home/srini16/Genome-Analysis-paper3/raw_data/RNA_untrimmed1/RNA_untrimmed/SRR4342139.2.fastq.gz \
    /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_1P.fastq.gz \
    /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_1U.fastq.gz \
    /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_2P.fastq.gz \
    /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_2U.fastq.gz \
    ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 \
    LEADING:20 \
    TRAILING:20 \
    SLIDINGWINDOW:4:15 \
    MINLEN:40 \
    MAXINFO:40:0.5
