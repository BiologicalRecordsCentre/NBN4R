#' Download taxonomic data
#' 
#' @references Associated NBN web service: \url{https://api.nbnatlas.org/#ws2}
#' 
#' @param query string: (optional) query of the form field:value (e.g. "genus:Macropus") or a free text search ("Alaba vibex")
#' @param fq string: character string or vector of strings, specifying filters to be applied to the original query. 
#' These are of the form "INDEXEDFIELD:VALUE" e.g. "kingdom:Fungi". See \code{nbn_fields("general",as_is=TRUE)} for all the 
#' fields that are queryable. NOTE that fq matches are case-sensitive, but sometimes the entries in the fields are 
#' not consistent in terms of case (e.g. kingdom names "Fungi" and "Plantae" but "ANIMALIA"). fq matches are ANDed 
#' by default (e.g. c("field1:abc","field2:def") will match records that have field1 value "abc" and field2 value "def"). 
#' To obtain OR behaviour, use the form c("field1:abc OR field2:def")
#' @param fields string vector: (optional) a vector of field names to return. Note that the columns of the returned data 
#' frame are not guaranteed to retain the ordering of the field names given here. If not specified, a default list of 
#' fields will be returned. See \code{nbn_fields("general",as_is=TRUE)} for valid field names. Use \code{fields="all"} to include all available fields
#' @param verbose logical: show additional progress information? [default is set by nbn_config()]
#' @param use_data_table logical: if TRUE, attempt to read the data.csv file using the fread function from the 
#' data.table package. Requires data.table to be available. If this fails, or use_data_table is FALSE, then read.table 
#' will be used (which may be slower)
#' @return data frame of results, containing one row per taxon, typically with name, guid, and taxonomic information. The columns returned will depend on the field requested
#' @seealso \code{\link{nbn_fields}}, \code{\link{nbn_config}}
#' @examples
#' \dontrun{
#' ## simplest usage
#' x <- taxinfo_download("rk_genus:Macropus")
#' 
#' ## Data for Fabaceae with specified fields
#' x <- taxinfo_download("rk_family:Fabaceae",fields=c("guid","parentGuid","rk_kingdom","rk_phylum",
#' "rk_class","rk_order","rk_family","rk_genus","scientificName"))
#' # equivalent direct URL: https://species-ws.nbnatlas.org/download?q=rk_family%3AFabaceae&fields=
#' # guid%2CparentGuid%2Crk_kingdom%2Crk_phylum%2Crk_class%2Crk_order%2Crk_family%2Crk_genus%
#' # 2CscientificName
#' }
#' @export taxinfo_download
taxinfo_download <- function(query, fq, fields, verbose = nbn_config()$verbose, use_data_table = TRUE) {
  
  ALA4R::taxinfo_download(query, fq, fields, verbose, use_data_table )
  
}