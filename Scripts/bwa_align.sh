#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J BWA_Mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

# Load modules
module load bioinfo-tools
module load bwa
module load samtools/1.9

#Command
input=/home/srini16/Genome-Analysis-paper3/raw_data/Annotation

output=/home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment

for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
do
  bwa index /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_${n}/bin_${n}.fna
  bwa mem -t 2 /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_${n}/bin_${n}.fna /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342137_1P.fastq.gz /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342137_2P.fastq.gz > /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37.sam 
  samtools view -S -b /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37.sam > /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37.bam
  samtools sort /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37.bam > /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37_sorted.bam
  rm /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37.sam
  rm /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_37.bam
done

for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
do
  bwa index  /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_${n}/bin_${n}.fna
  bwa mem -t 2  /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_${n}/bin_${n}.fna /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_1P.fastq.gz /home/srini16/Genome-Analysis-paper3/raw_data/RNA_trimmed/SRR4342139_2P.fastq.gz > /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39.sam
  samtools view -S -b /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39.sam > /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39.bam
  samtools sort /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39.bam > /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39_sorted.bam
  rm /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39.sam
  rm /home/srini16/Genome-Analysis-paper3/raw_data/BWA_Alignment/${n}_map_39.bam
done


