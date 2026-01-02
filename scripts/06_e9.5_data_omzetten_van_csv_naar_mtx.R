library(Matrix)

# Pad naar inputbestand
input_file <- "/home/data/projecticum/splicing/data/e95_count_matrix.csv.gz"

# Pad naar output map
outdir <- "~/data_integration/bewerkte_data"

# Maak map aan als die nog niet bestaat
if (!dir.exists(outdir)) {
  dir.create(outdir, recursive = TRUE)
}

# Zet bestand om van csv naar numeric matrix
counts_matrix <- as.matrix(counts)
counts_matrix <- Matrix(counts_matrix, sparse = TRUE)

writeMM(counts_matrix, file = file.path(outdir, "e95_count_matrix.mtx"))

# Zip het bestand om de ruimte die wordt ingenomen te beperken
system("gzip -9 ~/data_integration/bewerkte_data/*.mtx")