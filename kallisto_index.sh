#!/bin/bash
# Inside the genomes folder 
conda activate RNAseq

# Index the reference genomes
kallisto index -i $1index $1_cds.fa
