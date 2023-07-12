This folder contains the scripts employed in the final master's thesis of the student Manuel Lobato Márquez. July call of the academic year 2022/23 MADOBIS

Firstly, to set the environment for the analysis we run in Ubuntu the script called "setting_up_conda_env.sh". Then, in the folder with the fastq files we did the quality control by running "fastqc.sh".

After the quality check, we got the coding zones of those genomes that are not available online with the script "gffread.sh" introducing the name of the species for which the genome and annotation is to be used (due to the format of our filenames). This action must be done inside the folder with the genomes of interest. Then, in the same folder we indexed the genomes with "kallisto_index.sh" by introducing the name of the species to index (one per run). 

Afterwards, we used "kallisto_algnments.sh" to make the alignments to reference genomes, we must introduce firstly the name of the species to whose genome we want to align the fastq files (one per run) and then the condition (for example 3dpi_269) due to the defined format of the file names. 

Then, to can upload these count matrix to Degust to get de Differential Expression files, we had to open Rstudio and run the script called "txn_to_gene.R" in the same folder to met the files in the correct format to Degust. the file called "total_counts.csv" is the one that this software can use.

In order to obtain more visual results, all the DE files were merged into a single DE file with the script "join_DE_GO.R". Then, to get the activated and repressed genes in each condition as well as their GO terms, "DE_enrichment.R" was used. To make KEGG enrichment we employed "enrich_KEGG.R".

To study the early signaling genes for the nolR mutant hypothesis we runned "get_common_nod.R"
To study the defence genes fot the ttsl hypothesis we employed "Venn_diagram.R"