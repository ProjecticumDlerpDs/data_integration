library(Matrix)

# Pad naar inputbestand
input_file <- "/home/data/projecticum/splicing/data/e85_count_matrix.csv.gz"

# Pad naar output map
outdir <- "~/data_integration/bewerkte_data"

# Maak map aan als die nog niet bestaat
if (!dir.exists(outdir)) {
  dir.create(outdir, recursive = TRUE)
}

# Laad CSV (alleen de eerste 10 rijen voor voorbeeld)
counts <- read.csv(input_file, row.names = 1)

# Zet om naar numeric matrix
counts_matrix <- as.matrix(counts)
counts_matrix <- Matrix(counts_matrix, sparse = TRUE)

writeMM(counts_matrix, file = file.path(outdir, "e85_count_matrix.mtx"))
