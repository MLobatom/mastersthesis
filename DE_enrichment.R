# Load and explore the data
data <- read.table("final.data.tsv", sep = "\t", header = TRUE)
str(data)

# Select the columns where the log2 fold-changes values are included
col_range <- c(37:53)

# A |log2 fold-change = 2| will be used since, looking at the distribution of x in our data, we note 
# that we will have to be more restrictive to consider genes as differentially expressed.

# A loop to get the GO terms associated to the repressed genes in each condition
for (col in col_range) {
  column <- data[, col]
  variable_name <- paste0("repressed_", colnames(data)[col])
  variable_values <- data[column < -2, c(1, 54, col)]
  assign(variable_name, variable_values)
  
  # Save the repressed genes files
  file_name <- paste0(variable_name, ".tsv")
  write.table(variable_values, file = file_name, sep = "\t", col.names = TRUE, row.names = FALSE)
  cat("Variable", variable_name, "saved to", file_name, "\n")
}



# A loop to get the GO terms associated to the activated genes in each condition
for (col in col_range) {
  column <- data[, col]
  variable_name <- paste0("activated_", colnames(data)[col])
  variable_values <- data[column > 2, c(1, 54, col)]
  assign(variable_name, variable_values)
  
  # Save the activated genes files
  file_name <- paste0(variable_name, ".tsv")
  write.table(variable_values, file = file_name, sep = "\t", col.names = TRUE, row.names = FALSE)
  cat("Variable", variable_name, "saved to", file_name, "\n")
}
  

