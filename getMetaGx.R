library(MetaGxPancreas)

pancreasData <- loadPancreasDatasets()

saveRDS(pancreasData,"/pfs/out/metagxpancreas.rds")

# #Created and modified dates
# #Sys.setenv(TZ = "EST")
# created <- as.POSIXct(Sys.time(), format = "%Y-%m-%dT%H:%M:%S", tz = "EST")
# modified <- as.POSIXct(Sys.time(), format = "%Y-%m-%dT%H:%M:%S", tz = "EST")
# 
# #Contributions
# contributors <- data.frame(
#   "name" = c("Anthony Mammoliti", "Petr Smirnov", "Benjamin Haibe-Kains"),
#   "affiliation" = c(rep("University Health Network", 3)),
#   "email" = c("anthony.mammoliti@uhnresearch.ca", "petr.smirnov@utoronto.ca", "Benjamin.Haibe-Kains@uhnresearch.ca"),
#   "contribution" = c("createdBy","createdBy","authoredBy"),
#   "orcid" = c(NA,NA,"https://orcid.org/0000-0002-7684-0079"),
#   stringsAsFactors = FALSE
# )
# 
# #License
# license <- "https://opensource.org/licenses/Apache-2.0"
# 
# #Name of biocompute object
# name <- "MetaGxPancreas"
# 
# #Version of biocompute object
# bio_version <- "1.0.0"
# 
# #Embargo (none)
# embargo <- c()
# 
# #Derived from and obsolete after (none)
# derived_from <- c()
# obsolete_after <- c()
# 
# #reviewers (none)
# review <- c()
# 
# #compile domain
# provenance <- compose_provenance_v1.3.0(
#   name, bio_version, review, derived_from, obsolete_after,
#   embargo, created, modified, contributors, license
# )
# provenance %>% convert_json()
# 
# 
# ############################
# #####Description Domain#####
# ############################
# 
# #Keywords and platform info
# keywords <- c("Biomedical", "Pharmacogenomics", "Cellline", "Drug")
# platform <- c("Pachyderm", "ORCESTRA (orcestra.ca)", "Linux/Ubuntu")
# 
# #Metadata for each pipeline step
# pipeline_meta <- data.frame(
#   "step_number" = c("1"),
#   "name" = c("Download data object"),
#   "description" = c("Download data object from MetaGxPancreas R Package"),
#   "version" = c(1.0),
#   stringsAsFactors = FALSE
# )
# 
# #Inputs for each pipeline step
# pipeline_input <- data.frame(
#   "step_number" = c("1"),
#   "filename" = c("Data object"),
#   "uri" = c("http://bioconductor.org/packages/release/data/experiment/html/MetaGxPancreas.html"),
#   "access_time" = c(created),
#   stringsAsFactors = FALSE
# )
# 
# 
# #Outputs for each pipeline step
# pipeline_output <- data.frame(
#   "step_number" = c("1"),
#   "filename" = c("Downloaded data object"),
#   "uri" = c("/pfs/out/metagxpancreas.rds"
#   ),
#   "access_time" = c(created),
#   stringsAsFactors = FALSE
# )
# 
# #xref (none)
# xref <- c()
# 
# #pipeline prereq (none)
# pipeline_prerequisite <- c()
# 
# #compile domain
# description <- compose_description_v1.3.0(
#   keywords, xref, platform,
#   pipeline_meta, pipeline_prerequisite, pipeline_input, pipeline_output
# )
# description %>% convert_json()
# 
# 
# ############################
# ######Execution Domain######
# ############################
# 
# script <- c()
# script_driver <- c()
# 
# #software/tools and its versions used for data object creation
# software_prerequisites <- data.frame(
#   "name" = c("Pachyderm", "Docker Image"),
#   "version" = c("1.9.3", "v1"),
#   "uri" = c(
#     "https://www.pachyderm.com", "https://hub.docker.com/r/bhklab/metagxpancreas"
#   ),
#   stringsAsFactors = FALSE
# )
# 
# software_prerequisites[,"access_time"] <- rep(NA, length(software_prerequisites$name))
# software_prerequisites[,"sha1_chksum"] <- rep(NA, length(software_prerequisites$name))
# 
# external_data_endpoints <- c()
# environment_variables <- c()
# 
# execution <- compose_execution_v1.3.0(
#   script, script_driver, software_prerequisites, external_data_endpoints, environment_variables
# )
# execution %>% convert_json()
# 
# 
# ############################
# ######Extension Domain######
# ############################
# 
# #repo of scripts/data used
# scm_repository <- data.frame("extension_schema"= c("https://github.com/BHKLAB-Pachyderm"))
# scm_type <- "git"
# scm_commit <- c()
# scm_path <- c()
# scm_preview <- c()
# 
# scm <- compose_scm(scm_repository, scm_type, scm_commit, scm_path, scm_preview)
# scm %>% convert_json()
# 
# extension <- compose_extension_v1.3.0(scm)
# extension %>% convert_json()
# 
# ############################
# ######Parametric Domain#####
# ############################
# 
# df_parametric <- data.frame(
#   "param" = c(),
#   "value" = c(),
#   "step" = c(),
#   stringsAsFactors = FALSE
# )
# 
# parametric <- compose_parametric_v1.3.0(df_parametric)
# parametric %>% convert_json()
# 
# 
# 
# ############################
# ######Usability Domain######
# ############################
# 
# #usability of our data objects
# text <- c(
#   "Pipeline for creating MetaGxPancreas data object through ORCESTRA (orcestra.ca), a platform for the reproducible and transparent processing, sharing, and analysis of biomedical data."
# )
# 
# usability <- compose_usability_v1.3.0(text)
# usability %>% convert_json()
# 
# 
# ######################
# ######I/O Domain######
# ######################
# 
# input_subdomain <- data.frame(
#   "step_number" = c("1"),
#   "filename" = c("Data object"),
#   "uri" = c("http://bioconductor.org/packages/release/data/experiment/html/MetaGxPancreas.html"
#   ),
#   "access_time" = c(created),
#   stringsAsFactors = FALSE
# )
# 
# output_subdomain <- data.frame(
#   "mediatype" = c("RDS"),
#   "uri" = c("/pfs/out/metagxpancreas.rds"),
#   "access_time" = c(created),
#   stringsAsFactors = FALSE
# )
# 
# io <- compose_io_v1.3.0(input_subdomain, output_subdomain)
# io %>% convert_json()
# 
# 
# ########################
# ######Error Domain######
# ########################
# 
# empirical <- c()
# algorithmic <- c()
# 
# error <- compose_error(empirical, algorithmic)
# error %>% convert_json()
# 
# 
# ####Retrieve Top Level Fields####
# tlf <- compose_tlf_v1.3.0(
#   provenance, usability, extension, description,
#   execution, parametric, io, error
# )
# tlf %>% convert_json()
# 
# 
# ####Complete BCO####
# 
# bco <- biocompute::compose_v1.3.0(
#   tlf, provenance, usability, extension, description,
#   execution, parametric, io, error
# )
# bco %>% convert_json() %>% export_json("/pfs/out/MetaGxPancreas_BCO.json") %>% validate_checksum()
