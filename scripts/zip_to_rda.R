# This script will extract a csv from a zipped folder, and save it as an .rda (R Binary data format)
# Use the load() function to import this data.

zip2rda <- function(zip, csv, output){
  tmp <- tempdir()
  unzip(zip, csv, exdir = tmp)
  csv <- readr::read_csv(file.path(tmp, csv))
  readr::write_csv(csv, path = output)
}

## example usage
# zip2rda("nearby vacant parcels summary.zip", "nearby vacant parcels summary.csv", "vacant.rda")
# load("vacant.rda")
