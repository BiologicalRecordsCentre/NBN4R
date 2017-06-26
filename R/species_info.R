#' Fetch a taxon profile given a scientific name or LSID (GUID)
#' 
#' @references Associated ALA web service: \url{https://api.nbnatlas.org/#ws80}
#' 
#' @param scientificname string: scientific name of the taxon of interest (species, genus, family etc) 
#' @param guid string: The Life Science Identifier of the taxon of interest
#' @param verbose logical: show additional progress information? [default is set by ala_config()]
#' @return A species profile in the form of a named list, each element of which is generally a data frame. An empty list is returned if no match is found for the supplied name or guid
#' @seealso \code{\link{ala_config}}
#' @examples
#' \dontrun{
#'  species_info("Grevillea humilis subsp. maritima")
#'  species_info(guid="http://id.biodiversity.org.au/node/apni/2890970")
#'  species_info("Alaba",verbose=TRUE)
#' }
#' @export species_info
species_info <- function(...) {
  
  ALA4R::species_info(...)
  
}