#!/bin/bash
# Inside the folder in which the fastq files are located
#cd $HOME/TFM/fastq
conda activate RNAseq

# We perform quality control of the sequencing of each replicate with FastQC

fastqc *.gz

# We move all the FastQC files to a new folder

mkdir fastqc
mv *fastqc fastqc 

