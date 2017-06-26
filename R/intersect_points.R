#' Intersect environmental or contextual layers at a given a set of points (coordinates)
#' 
#' @references The associated ALA web service: \url{https://api.nbnatlas.org/#ws84}
#' @references Descriptions of the spatial layers: \url{https://layers.nbnatlas.org/layers/}
#'
#' This function allows the user to sample environmental/contextual layers at arbitrary locations. It complements 
#' the \code{\link{occurrences}} function, which allows values of the same set of layers to be downloaded at 
#' species occurrence locations.
#' NOTE: batch requests (multiple points) are currently processed in a *single queue* on the ALA servers. Processing times may be slow if there are many requests in the queue. Note also that the actual processing of batch requests is inherently slow: a large number of points may take quite some time. Be warned.
#' @param pnts numeric: vector of latitude/longitude pairs, or a 2 column data.frame or matrix of lat,lons. NOTE: the number of locations must be less than 100000.
#' @param layers string vector: ids of layers to be intersected. The list of possible layers is available from \code{ala_fields("layers")}. Names can be passed as full layer names (e.g. "Radiation - lowest period (Bio22)") rather than id ("el871"). Note: if more than one location has been provided in \code{pnts}, the number of layers must be less than 700. 
#' @param SPdata.frame logical: should the output should be returned as a SpatialPointsDataFrame of the sp package or simply as a data.frame?
#' @param use_layer_names logical: if TRUE, layer names will be used as column names in the returned data frame (e.g. "radiationLowestPeriodBio22"). Otherwise, layer id value will be used for column names (e.g. "el871")
#' @param verbose logical: show additional progress information? [default is set by \code{\link{ala_config}}]
#' @return A SpatialPointsDataFrame containing the intersecting data information. Missing data or incorrectly identified layer id values will result in NA data
#' @seealso \code{\link{ala_config}}
#' @examples
#' \dontrun{
#'  #single point with multiple layers
#'  layers <- c('cl22','cl23','el773')
#'  pnts <- c(-23.1,149.1)
#'  intersect_points(pnts,layers)
#'  # equivalent direct web service call:
#'  # https://layers.nbnatlas.org/ws/intersect/cl22,cl23,el773/-23.1/149.1  
#' 
#'  ## multiple points as a grid sampling multiple layers
#'  layers <- c('cl22','cl23','el773')
#'  pnts <- data.frame(expand.grid(lat=seq(-29,-19,2.0),lon=seq(130.0,140.0,2.0)))
#'  intersect_points(pnts,layers)
#' }

## Previous limits of 1000 points and 299 layers have been increased here to reflect the increase on the service end. The batch version uses POST now to avoid 414 (URL too long) errors. Non-batch version does not seem to suffer 414s, even with 300 layers

#' @export
intersect_points <- function(...) {
  
 ALA4R::intersect_points(...)
  
}