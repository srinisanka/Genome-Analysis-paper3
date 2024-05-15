#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J Prokka_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user srini16112000@gmail.com

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# Your commands

prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_1 --prefix bin_1 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.1.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_2 --prefix bin_2 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.2.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_3 --prefix bin_3 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.3.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_4 --prefix bin_4 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.4.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_5 --prefix bin_5 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.5.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_6 --prefix bin_6 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.6.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_7 --prefix bin_7 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.7.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_8 --prefix bin_8 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.8.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_9 --prefix bin_9 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.9.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_10 --prefix bin_10 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.10.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_11 --prefix bin_11 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.11.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_12 --prefix bin_12 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.12.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_13 --prefix bin_13 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.13.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_14 --prefix bin_14 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.14.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_15 --prefix bin_15 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.15.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_16 --prefix bin_16 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.16.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_17 --prefix bin_17 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.17.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_18 --prefix bin_18 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.18.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_20 --prefix bin_20 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.20.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_21 --prefix bin_21 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.21.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_23 --prefix bin_23 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.23.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_24 --prefix bin_24 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.24.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_25 --prefix bin_25 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.25.fa
prokka --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_26 --prefix bin_26 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.26.fa

prokka --kingdom Archaea --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_19 --prefix bin_19 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.19.fa
prokka --kingdom Archaea --outdir /home/srini16/Genome-Analysis-paper3/raw_data/Annotation/bin_22 --prefix bin_22 /home/srini16/Genome-Analysis-paper3/raw_data/Binning/Binning.22.fa
