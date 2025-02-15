% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot.R
\name{gg.matrix}
\alias{gg.matrix}
\title{Geom for matrix}
\usage{
\method{gg}{matrix}(data, mapping = NULL, ...)
}
\arguments{
\item{data}{A \code{matrix} object.}

\item{mapping}{a set of aesthetic mappings created by \code{aes}. These are passed on to \code{geom_tile}.}

\item{...}{Arguments passed on to \code{geom_tile}.}
}
\value{
A \code{geom_tile} with reversed y scale.
}
\description{
Creates a tile geom for plotting a matrix
}
\details{
Requires the \code{ggplot2} package.
}
\examples{
if (require("ggplot2", quietly = TRUE)) {
  A <- matrix(runif(100), nrow = 10)
  ggplot() +
    gg(A)
}
}
\seealso{
Other geomes for inla and inlabru predictions: 
\code{\link{gg.data.frame}()},
\code{\link{gg.prediction}()},
\code{\link{gg}()},
\code{\link{gm}()}
}
\concept{geomes for inla and inlabru predictions}
