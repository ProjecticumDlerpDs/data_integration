# Data_Integration
Data integration of scRNA-seq data of mouse embryo cells

Dit project valt onder de voorwaarden van de MIT-licentie.

---

## Project structuur

```ruby
install.packages("fs")
fs::dir_tree(path = ".", recurse = 1)
```

```
data_integration
├── LICENSE
├── README.html
├── README.md
├── analyse
├── bewerkte_data
├── data_integration.Rproj
├── raw_data
│   ├── e65_count_matrix.csv
│   ├── e65_count_matrix.csv.gz
│   ├── e65_feature_metadata.csv
│   ├── e65_feature_metadata.csv.gz
│   ├── e65_sample_metadata.csv
│   ├── e75_count_matrix.csv.gz
│   ├── e75_feature_metadata.csv.gz
│   ├── e75_sample_metadata.csv
│   ├── e85_count_matrix.csv.gz
│   ├── e85_count_matrix.mtx.gz
│   ├── e85_feature_metadata.csv.gz
│   ├── e85_sample_metadata.csv
│   ├── e95_count_matrix.csv.gz
│   ├── e95_feature_metadata.csv.gz
│   ├── e95_sample_metadata.csv
│   └── pbmc3k_filtered_gene_bc_matrices.tar
└── scripts
    ├── 01_Seurat_tutorial.Rmd
    ├── 01_Seurat_tutorial.pdf
    ├── 02_seurat_data_integration_tutorial.Rmd
    └── 02_seurat_data_integration_tutorial.pdf
```

---

## Setup

De volgende packages zijn gedurende het project gebruikt:

- dplyr
- Seurat
- patchwork
- here
- SeuratData
- ggplot2
- cowplot

---

