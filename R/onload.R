.onLoad <- function(libname,pkgname) {
  
  if (pkgname == "NBN4R") {
  
  ## get default server config from ALA4R package  
    
  temp <- getOption("ALA4R_server_config")
    
  ## We need to overwrite the server configuration found in ALA4R package with NBN info and urls
  ## Both APIs are the same (NBN has recently based their API on ALA)  
  ## Therefore this package is simply a wrapper around ALA4R functions and updates in ALA4R can be
  ## incorporated in NBN4R

  temp$brand <- "NBN4R" ## the package name that is shown to users in messages and warnings
  temp$max_occurrence_records = 500000
  temp$server_max_url_length = 8150 ## bytes, for Apache with default LimitRequestLine value of 8190, allowing 40 bytes wiggle room. Users will be warned of possible problems when URL exceeds this length
  temp$notify = "If this problem persists please notify the ALA4R maintainers by lodging an issue at https://github.com/AtlasOfLivingAustralia/ALA4R/issues/ or emailing support@ala.org.au" ## the string that will be displayed to users to notify the package maintainers
  temp$support_email = "support@ala.org.au" ## contact email
  temp$reasons_function = "ala_reasons" ## the ala_reasons or equivalent function name
  temp$fields_function = "ala_fields" ## the ala_fields or equivalent function name
  temp$occurrences_function = "occurrences" ## the occurrences or equivalent function name
  temp$config_function = "ala_config" ## the ala_config or equivalent function name
  temp$base_url_spatial = "https://layers.nbnatlas.org/ws" ## the base url for spatial web services
  temp$base_url_bie = "https://species-ws.nbnatlas.org/" ## the base url for BIE web services
  temp$base_url_biocache = "https://records-ws.nbnatlas.org/" ## Services for mapping occurrence data, and species breakdowns for geographic areas.
  temp$biocache_version = "1.8.2" 
  temp$base_url_alaspatial = "https://layers.nbnatlas.org/alaspatial/ws/" ## the base url for older ALA spatial services
  temp$base_url_images = "https://images.nbnatlas.org/" ## the base url for the images database. Set to NULL or empty string if not available
  temp$base_url_logger = "http://logger.ala.org.au/service/logger/" ## the base url for usage logging webservices
  temp$base_url_lists = "https://lists.nbnatlas.org/ws" ## base url for services for creating & editing lists of taxa
  
  ## override any other settings here
  options(ALA4R_server_config = temp)
  
  }
}


