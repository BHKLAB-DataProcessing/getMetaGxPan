library(MetaGxPancreas)

pancreasData <- loadPancreasDatasets()

saveRDS(pancreasData,"/pfs/out/metagxpancreas.rds")
