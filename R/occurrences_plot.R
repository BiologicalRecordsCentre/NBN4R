#' Quick geographic plot of occurrence data
#' 
#' Generates a plot of occurrence data retrieved using \code{\link{occurrences}}.The plot uses
#' an Australian basemap and colours the occurrence records dots according to parameters
#' 
#' @references \url{https://api.nbnatlas.org/}
#' 
#' @param x list: a list object that has been downloaded using \code{\link{occurrences}}
#' @param filename string: name of file to be created; defaults to RPlots.pdf
#' @param qa string vector: list of record issues to be mapped; these can be assertion columnnames, 
#' or 'all' or 'none' or any combination of 'error', 'warning' or 'fatal'. Column or categories in 
#' your dataset can be viewed using \code{check_assertions}. 
#' @param grouped logical: TRUE creates a single plot for all observations; FALSE plots individual 
#' maps for the taxon level defined.
#' @param taxon_level string: taxonomic level at which to create maps; possible values are 'species', 
#' 'genus', 'family' or 'order'
#' @param pch single number or character representing point type. See description of \code{pch} in \code{\link{points}}.
#' @param cex numeric: character (or symbol) expansion. See description of \code{cex} in \code{\link{points}}.
#' @param \dots : other options passed to pdf()
#' @return Generates a pdf that maps the distributions.
#' 
#' @examples
#' \dontrun{ 
#' #download some observations
#' x <- occurrences(taxon="Eucalyptus gunnii",download_reason_id=10)
#' occurrences_plot(x)
#' x <- occurrences(taxon="Cider Gum",download_reason_id=10)
#' occurrences_plot(x,"alaPlot.pdf",qa="fatal",grouped=FALSE, taxon_level="species",pch='+')
#' }
#' @export occurrences_plot
occurrences_plot <- function(...) {
  
  ALA4R::occurrences_plot(...)
  
}