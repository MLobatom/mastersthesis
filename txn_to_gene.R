library(tximport)
library(readr)

################################################################################
# We load the experimental design
samples <- read.table("samples1.txt", header = TRUE)
samples

files <- file.path(samples$folder, "abundance.tsv")
files

names(files) <- paste0("sample_", 1:14)
all(file.exists(files))

# to concatenate the different isoforms of the genes
tx2gene <- read.csv("tx2gene.csv") 

# to create a file with the abundance, length and counts of each gene (txi file)
txi <- tximport(files, type = "kallisto", tx2gene = tx2gene, ignoreAfterBar = TRUE)
head(txi$counts)

# to save the txi file
txi <- as.data.frame(txi)
genes <- rownames(txi)
txi1 <- cbind(genes,txi)
txi1 <- as.numeric(txi1)

write.table(txi1, file = "total_txi.tsv", sep = "\t", quote = FALSE, row.names = FALSE)

# to create the file that Degust software needs (only with counts of each gene)
total_counts <- cbind(genes,txi[,c(15:28)])
write.csv(total_counts, file = "total_counts.csv", quote = FALSE, row.names = FALSE)
write.table(total_counts, file = "total_counts.tsv", quote = FALSE, row.names = FALSE, sep = '\t')
