#' Retrieve the full details of occurrence records
#'
#' Note that this makes a separate web request for each occurrence uuid, and so may not be wise to use on a large number of uuids.
#' 
#' @references Associated ALA web service: \url{https://api.nbnatlas.org/#ws102}
#' 
#' @param uuid string: one or more record ids, as returned by \code{\link{occurrences}} (in the \code{data$id} column)
#' @param verbose logical: show additional progress information? [default is set by ala_config()]
#' @return A named list (named by uuid), each element of which is a list containing the details for that uuid. This inner list will be empty if no match is found for the supplied uuid
#' @seealso \code{\link{occurrences}} \code{\link{ala_config}}
#' @examples
#' \dontrun{
#' s1 <- occurrence_details("f259c5ce-200c-41a2-b73a-e36a91f748f7")
#' str(s1,max.level=3)
#' }
#' @export occurrence_details
occurrence_details <- function(...) {
  
  ALA4R::occurrence_details(...)
  
}