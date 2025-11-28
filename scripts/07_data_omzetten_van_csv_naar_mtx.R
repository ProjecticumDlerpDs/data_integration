library(Matrix)

# Lijst van input CSV-bestanden
input_files <- c(
  "/home/data/projecticum/splicing/data/e65_count_matrix.csv",
  "/home/data/projecticum/splicing/data/e75_count_matrix.csv.gz",
  "/home/data/projecticum/splicing/data/e85_count_matrix.csv.gz",
  "/home/data/projecticum/splicing/data/e95_count_matrix.csv.gz"
)

# Output map
outdir <- "~/data_integration/bewerkte_data"

# Maak output map aan indien nodig
if (!dir.exists(outdir)) {
  dir.create(outdir, recursive = TRUE)
}

convert_csv_to_mtx_gz <- function(input_file, outdir) {
  # Basisnaam voor output
  base <- gsub("\\.csv(\\.gz)?$", "", basename(input_file))
  out_mtx_gz <- file.path(outdir, paste0(base, "_matrix.mtx.gz"))
  
  # Laad CSV (R opent automatisch .gz)
  counts <- read.csv(input_file, row.names = 1)
  
  # Zet om naar numeric sparse matrix
  counts_matrix <- as.matrix(counts)
  counts_matrix <- Matrix(counts_matrix, sparse = TRUE)
  
  # Schrijf direct naar .mtx.gz
  gz_con <- gzfile(out_mtx_gz, "w")
  writeMM(counts_matrix, file = gz_con)
  close(gz_con)
  
  message("Gemaakt: ", out_mtx_gz)
}

# Loop over alle bestanden
for (file in input_files) {
  convert_csv_to_mtx_gz(file, outdir)
}
