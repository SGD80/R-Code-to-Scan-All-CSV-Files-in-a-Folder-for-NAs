######## Libraries ########

library(tidyverse)

######## Set the folder path ########

folder_path <- "  insert your folder filepath here     "

######## Get all CSV files in the folder ########

csv_files <- list.files(folder_path, pattern = "\\.csv$", full.names = TRUE)

######## Create a list to store results ########

na_report <- list()

######## Loop over each file ########

for (file in csv_files) {
  # Read the file
  df <- read_csv(file, show_col_types = FALSE)
  
  # Count NAs per column
  na_counts <- colSums(is.na(df))
  
  # Filter only columns with at least one NA
  na_counts <- na_counts[na_counts > 0]
  
  if (length(na_counts) > 0) {
    na_report[[basename(file)]] <- na_counts
  }
}

######## Display results ########

if (length(na_report) == 0) {
  message("✅ No NAs found in any CSV files.")
} else {
  message("⚠️ NAs found in the following files/columns:")
  for (file_name in names(na_report)) {
    cat("\n📄", file_name, "\n")
    print(na_report[[file_name]])
  }
}

######## End ######## 