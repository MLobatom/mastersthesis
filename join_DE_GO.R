
library(readxl)

# Set the folder and the files to be joined in variables
dir <- "C:/Users/manue/OneDrive/Desktop/MADOBIS/TFM/DE/"

files <- list.files(dir, pattern = "*.tsv")

# Load the annotation file
lotus_ID <- read_excel('annotation_GO.xlsx')
  
# Initialize an empty list to join the files
combined_data <- NULL

# Use a loop to read each file to combine it with the previous ones
for (file in files) {
  data <- read.table(file = paste0(dir, file), sep = "\t", header = TRUE)
  
  if (is.null(combined_data)) {
    combined_data <- data
  } else {
    by_columns <- intersect(colnames(combined_data), colnames(data))
    
    combined_data <- merge(combined_data, data, all = TRUE, by = by_columns)
  }
}


# Combine the differential expression files and the annotation one
final.data <- merge(combined_data,lotus_ID, all = TRUE, by = "genes")

# Show the results
view(final.data)

# Save the results
write.table(final.data,file = "final.data.tsv", sep = "\t", row.names = FALSE)




