library('readxl')
# Load the list of activated genes in nolR mutant to the WT strain

# In the Differential Expressions files folder
# setwd("C:/Users/manue/OneDrive/Desktop/MADOBIS/TFM/DE")

activated_nolR <- read.table("activated/activated_X3dpi_WT_548.tsv", sep = "\t", header = TRUE)

# Load early signaling genes list
nod_genes <-  read_excel("nodulation_genes.xlsx")
nod_genes <- as.data.frame(nod_genes)

# Get nod genes overexpressed in mutant
nod_common <- nod_genes[nod_genes %in% activated_nolR[,1]]



