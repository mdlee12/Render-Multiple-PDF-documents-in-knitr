# File 1: Should be an R-Script 
# contains a loop that iteratively calls an Rmarkdown file (i.e. File 2)
# This R file is run in console, uses Rmd script to generate pdfs

# load packages
library(knitr)
library(markdown)
library(rmarkdown)

# for each type of species in the data create a report
# these reports are saved in output_dir with the name specified by output_file
for (spec in unique(iris$Species)){
  rmarkdown::render(input = "C:/Users/mlee/Documents/r_script_pdf.Rmd", 
                    output_format = "pdf_document",
                    output_file = paste("test_report_", spec, Sys.Date(), ".pdf", sep=''),
                    output_dir = "C:/Users/mlee/Documents")
}
