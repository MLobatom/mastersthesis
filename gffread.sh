#!/bin/bash

# Inside the folder with the genomes and annotations
# cd $HOME/TFM/genomes

gffread -w $1_cds.fa  -g $1_genome.fa -y $1_protein.fasta -F --keep-genes --keep-comments $1_annotation.gff
# Where $1 is the name of the organism that is included in this format in the genome and annotation filenames (input files) 
