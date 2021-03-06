#' Fetch information about an image, given its image ID
#'
#' Note that there is currently no web service that provides image information, and so we are scraping results from pages of the form https://images.nbnatlas.org/image/details?imageId=id. This web scraping may be fragile, and will be replaced by a web-service-based function when one becomes available.
#' 
#' @param id character: IDs of images (e.g. as returned by \code{\link{occurrences}}  in the imageUrl column). Each ID will be of a format something like "84654e14-dc35-4486-9e7c-40eb2f8d3faa"
#' @param image_number character or numeric: ID numbers of images (e.g. as returned by NBN's image search at \url{https://images.nbnatlas.org/}. Each image_number will be of a format something like 122218480
#' @param verbose logical: show additional progress information? [default is set by nbn_config()]
#' @return A data.frame with one row per \code{id}, and at least the columns imageIdentifier and imageURL
#' @seealso \code{\link{nbn_config}} \code{\link{occurrences}}
#' @examples
#' \dontrun{
#' ## Using IDs returned from occurrences() function
#' 
#' image_info(id = c("eeadbb65-5509-4e55-9b3d-bd9bfb99f76c",
#'   "2f61274d-c397-4d24-ac9a-43fac921e43f"))
#'   
#' ## Using image numbers found on images.nbnatlas.org
#' 
#' image_info(c(image_number=5881156))
#' }
#' @export image_info
image_info <- function(id, image_number, verbose = nbn_config()$verbose) {
  
  ALA4R::image_info(id, image_number, verbose)
  
}
