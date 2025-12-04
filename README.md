# Data science project: Data_Integration

Een data science project voor de analyse van data integratie van scRNA-seq data van muizen embryo cellen.

Dit project valt onder de voorwaarden van de MIT-licentie.

---

## Beschrijving

Het doel van dit project is om een pipeline te schrijven voor het analyseren van VASA-seqencing data met data integratie. Om de data integratie uit te kunnen voeren wordt er gebruik gemaakt van de package Seurat binnen Rstudio. In deze githup repository zullen alle scripts en data worden opgeslagen. Niet alle data wordt op deze githup opgeslagen in verband met de grootte van deze bestanden, in de .gitignore file zijn de mappen te vinden die niet op github worden opgeslagen. 

---

## Workflow

Deelvraag 1: Hoe werkt Seurat?
Bestanden: 01_seurat_tutorial.Rmd, 01_seurat_tutorial.pdf

Deelvraag 2: Hoe moeten de csv-bestanden omgezet worden in mtx-bestanden?
Bestanden: 03_06_5_data_omzetten_van_csv_naar_mtx.R, 04_07_5_data_omzetten_van_csv_naar_mtx.R, 05_08_5_data_omzetten_van_csv_naar_mtx.R, 06_09_5_data_omzetten_van_csv_naar_mtx.R, 07_data_omzetten_van_csv_naar_mtx.R

Deelvraag 3: Hoe moet de dataset geïnspecteerd worden?

Deelvraag 4: Hoe moet de dataset opgeschoond worden?

Deelvraag 5: Hoe moet de dataset genormaliseerd worden?

Deelvraag 6: Hoe moet de kwaliteitscontrole worden uitgevoerd op de dataset?

Deelvraag 7: Hoe voeg ik mijn data samen?

Deelvraag 8: Hoe werkt het monocle 3 programma?

Deelvraag 9: Hoe sluit de data van Seurat aan op monocle 3?

Hoofdvraag: Kan met behulp van Seurat uitgezocht worden waar alle clusters uit zijn ontstaan binnen de single cell sequences van muizenembryo's?

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
    ├── 02_seurat_data_integration_tutorial.pdf
    ├── 03_06_5_data_omzetten_van_csv_naar_mtx.R
    ├── 03_6_5_data_laden.Rmd
    ├── 03_6_5_data_laden.pdf
    ├── 04_07_5_data_omzetten_van_csv_naar_mtx.R
    ├── 05_08_5_data_omzetten_van_csv_naar_mtx.R
    ├── 06_09_5_data_omzetten_van_csv_naar_mtx.R
    └── 07_data_omzetten_van_csv_naar_mtx.R
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
- Matrix

---

## Originele data

De originele data komt uit het artikel: High-throughput total RNA sequencing in single cells using VASA-seq. 

doi: https://doi.org/10.1038/s41587-022-01361-8

---

## Contactgegevens

Bij vragen en opmerkingen kunt u terecht bij:

Naam: Petra Molenaar

e-mail: petra.molenaar@student.hu.nl