## Introduction

:computer: :bar_chart:
Analysis to recreate the results in the manuscript **""** by Paz et al. 2020. 

## Running details
Analysis is presented as several R Markdown files that were ran on a Macintosh using the macOS High Sierra v10.13.6 operating system with 8 GB RAM. Other operating systems should work with successful cloning of the environment (see **Create environment**)

## Steps

Follow the instructions below to setup the same environment used to analyze the data and render the R Markdown files. Adhere to the delineated order as succeeding R Markdown files depend on previous results.

    1. data_curation.Rmd
	2. production_responses.Rmd
	3. rumen_parameters.Rmd
	4. import_fastq.Rmd
	5. qc_asvtable_deblur.Rmd
	6. filter_phylotree.Rmd
	7. rarefaction.Rmd
	8. alpha_beta_metrics_breed.Rmd
    9. venn_diagram.Rmd
    10. taxonomy.Rmd
    11. alpha_temporal.Rmd
    12. beta_temporal.Rmd
    13. lefse_files.Rmd
    14. differential_asv.Rmd
    15. heatmaps.Rmd
    16. picrust.Rmd
    17. rda.Rmd

**Create environment**

Clone the github repository and run the setup.sh script

- git clone https://github.com/pazlabgit/rumen_var_2020
- cd rumen_var_2020
- ./setup.sh

**Render R Markdown files**

Within the rumen_var_2020 directory

- source miniconda/bin/activate rumen_var_2020
- miniconda/envs/r/bin/Rscript -e "rmarkdown::render('file[1-17].Rmd')"