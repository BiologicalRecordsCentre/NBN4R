% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nbn_lists.R
\name{nbn_list}
\alias{nbn_list}
\title{Species lists}
\usage{
nbn_list(druid, kvp = TRUE, verbose = nbn_config()$verbose)
}
\arguments{
\item{druid}{string: data resource UID of the list (i.e. the list identifier)}

\item{kvp}{logical: include key-value pairs? Some lists contain information about the species in the form of key-value pairs}

\item{verbose}{logical: show additional progress information?}
}
\value{
data.frame
}
\description{
Note that this refers to pre-generated lists of species stored on the NBN servers. The similarly-named but different function \code{\link{specieslist}} provides a different function, namely listing the species matching a query or recorded as present in a search area.
}
\examples{
\dontrun{
 all_lists <- nbn_lists()
 ## find the "Field Guide apps species profiles" from Museum Victoria
 all_lists[grep("Field Guide",all_lists$listName),]
 ## download the vertebrates one
 l <- nbn_list(druid="dr1146")
}

}
\references{
\url{https://lists.nbnatlas.org} and the associated web services at \url{https://lists.nbnatlas.org/ws}
}
\seealso{
\code{\link{specieslist}} \code{\link{nbn_lists}}
}
