#
cat("Loading MDB files from stlouis-mo.gov/data/ into R global namespace.")
#

#
cat("download prcl.mdb and load tables into lists prefixed with prcl.")
#
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prcl.zip", "prcl.zip")
cat("prcl.zip is downloaded.\n")

unzip("prcl.zip")
cat("prcl.zip is unzipped\n")

prcl_db <- mdb.get('prcl.mdb')
cat("prcl_db is loaded from prcl.mdb.\n")

cat("Loading tables in one thread:\n")
list2env(setNames(prcl_db, paste0("prcl.", names(prcl_db))), .GlobalEnv)
cat("Loaded all prcl.* tables into the R global namespace process.\n")

remove(prcl_db)
cat("Removed prcl_db variable from R global namespace.\n")

file.remove(c("prcl.mdb","prcl.zip"))
cat("Removed prcl.mdb and prcl.zip files removed from computer.\n")

#
cat("download bldginsp.mdb and load tables into lists prefixed with bldginsp.")
#
download.file("https://www.stlouis-mo.gov/data/upload/data-files/bldginsp.zip", "bldginsp.zip")
cat("bldginsp.zip is downloaded.\n")

unzip("bldginsp.zip")
cat("bldginsp.zip is unzipped\n")

bldginsp_db <- mdb.get('bldginsp.mdb')
cat("bldginsp_db is loaded from bldginsp.mdb.\n")

cat("Loading tables in one thread:\n")
list2env(setNames(bldginsp_db, paste0("bldginsp.", names(bldginsp_db))), .GlobalEnv)
cat("Loaded all bldginsp.* tables into the R global namespace process.\n")

remove(bldginsp_db)
cat("Removed bldginsp_db variable from R global namespace.\n")

file.remove(c("bldginsp.mdb","bldginsp.zip"))
cat("Removed pbldginsp.mdb and bldginsp.zip files removed from computer.\n")

#
#download prmbdo.mdb and load tables into lists prefixed with prmbdo.
#
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prmbdo.zip", "prmbdo.zip")
cat("prmbdo.zip is downloaded.\n")

unzip("prmbdo.zip")
cat("prmbdo.zip is downloaded.\n")

prmbdo_db <- mdb.get('prmbdo.mdb')
prmcode_db <- mdb.get('prmcode.mdb')
list2env(setNames(prmbdo_db, paste0("prmbdo.", names(prmbdo_db))), .GlobalEnv)
list2env(setNames(prmcode_db, paste0("prmcode.", names(prmcode_db))), .GlobalEnv)
remove(prmbdo_db)
remove(prmcode_db)
file.remove(c("prmbdo.mdb","prmbdo.zip", 'prmcode.mdb'))

#
#download prmemp.mdb and load tables into lists prefixed with prmemp.
#
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prmemp.zip", "prmemp.zip")
unzip("prmemp.zip")
prmemp_db <- mdb.get('prmemp.mdb')
prmcode2_db <- mdb.get('prmcode.mdb')
list2env(setNames(prmemp_db, paste0("prmemp.", names(prmemp_db))), .GlobalEnv)
list2env(setNames(prmcode2_db, paste0("prmcode2.", names(prmcode2_db))), .GlobalEnv)
remove(prmemp_db)
remove(prmcode2_db)
file.remove(c("prmemp.mdb","prmemp.zip", 'prmcode.mdb'))

#
cat("data_download.R is finished.")
#
