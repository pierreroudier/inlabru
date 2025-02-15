% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bru.integration.R
\name{cprod}
\alias{cprod}
\title{Cross product of integration points}
\usage{
cprod(...)
}
\arguments{
\item{...}{\code{data.frame} or \code{SpatialPointsDataFrame} objects, each one usually obtained by a call to the \link{ipoints} function.}
}
\value{
A \code{data.frame} or \code{SpatialPointsDataFrame} of multidimensional integration points and their weights
}
\description{
Calculates the cross product of integration points in different dimensions
and multiplies their weights accordingly. If the object defining points in a particular
dimension has no weights attached to it all weights are assumend to be 1.
}
\examples{
\donttest{
# ipoints needs INLA
if (bru_safe_inla()) {
  # Create integration points in dimension 'myDim' and 'myDiscreteDim'
  ips1 <- ipoints(rbind(c(0, 3), c(3, 8)), 17, name = "myDim")
  ips2 <- ipoints(domain = c(1, 2, 4), name = "myDiscreteDim")

  # Calculate the cross product
  ips <- cprod(ips1, ips2)

  # Plot the integration points
  plot(ips$myDim, ips$myDiscreteDim, cex = 10 * ips$weight)
}
}

}
\author{
Fabian E. Bachl \email{bachlfab@gmail.com}
}
