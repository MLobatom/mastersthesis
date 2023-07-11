#!/bin/bash
# In the Master's thesis general folder
kallisto quant -i genomes/$1index -b 30 -o $1_$2 --plaintext fastq/$2_ARNm_sorted_R1.fastq.gz fastq/$2_ARNm_sorted_R2.fastq.gz

# A new folder with the name of each condition and the genome used will be created 
