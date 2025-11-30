# Installeer indien nodig de Matrix package en laadt deze
if (!require(Matrix, quietly = TRUE)) install.packages("Matrix"); library(Matrix)

# Geef het pad naar input CSV-bestanden aan
input_files <- c(
  "/home/data/projecticum/splicing/data/e65_count_matrix.csv",
  "/home/data/projecticum/splicing/data/e75_count_matrix.csv.gz",
  "/home/data/projecticum/splicing/data/e85_count_matrix.csv.gz",
  "/home/data/projecticum/splicing/data/e95_count_matrix.csv.gz"
)

# Geef het pad naar output map aan
outdir <- path.expand ("~/data_integration/bewerkte_data")

# Maak output map aan indien deze nog niet bestaat
if (!dir.exists(outdir)) {
  dir.create(outdir, recursive = TRUE)
}

# Zet csv bestand om in mtx
convert_csv_to_mtx_gz <- function(input_file, outdir) {
  
  # Maak een basisnaam aan voor de output, verwijder .csv of .csv.gz en zet dit om in .mtx.gz.
  base <- gsub("\\.csv(\\.gz)?$", "", basename(input_file))
  out_mtx_gz <- file.path(outdir, paste0(base, ".mtx.gz"))
  
  # Laad csv bestanden in, de eerste kolom wordt gebruikt als rij naam.
  counts <- read.csv(input_file, row.names = 1)
  
  # Zet csv bestanden om naar numeric sparse matrix, hierbij worden de 0-waarden niet opgeslagen wat zorgt voor minder grote bestanden.
  counts_matrix <- as.matrix(counts)
  counts_matrix <- Matrix(counts_matrix, sparse = TRUE)
  
  # Maak pad naar tijdelijk .mtx bestand
  out_mtx <- file.path(outdir, paste0(base, ".mtx"))
  
  # Schrijf de sparse matrix naar .mtx
  writeMM(counts_matrix, file = out_mtx)
  
  # Comprimeer achteraf met maximale gzip-compressie
  system(paste("gzip -9 -f", shQuote(out_mtx)))
  
  # Geef een bericht wanneer een bestand klaar is
  message("Gemaakt: ", out_mtx_gz)
}

# Loop over alle bestanden
for (file in input_files) {
  convert_csv_to_mtx_gz(file, outdir)
}
