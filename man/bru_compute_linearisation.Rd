% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nlinla.R
\name{bru_compute_linearisation}
\alias{bru_compute_linearisation}
\alias{bru_compute_linearisation.component}
\alias{bru_compute_linearisation.bru_like}
\alias{bru_compute_linearisation.bru_like_list}
\alias{bru_compute_linearisation.bru_model}
\title{Compute inlabru model linearisation information}
\usage{
bru_compute_linearisation(...)

\method{bru_compute_linearisation}{component}(
  cmp,
  model,
  lhood_expr,
  data,
  state,
  A,
  effects,
  pred0,
  allow_latent,
  allow_combine,
  eps,
  ...
)

\method{bru_compute_linearisation}{bru_like}(lhood, model, data, state, A, eps, ...)

\method{bru_compute_linearisation}{bru_like_list}(lhoods, model, state, A, eps = 1e-05, ...)

\method{bru_compute_linearisation}{bru_model}(model, lhoods, state, A, ...)
}
\arguments{
\item{\dots}{Parameters passed on to other methods}

\item{cmp}{A \link{bru_component} object}

\item{model}{A \code{bru_model} object}

\item{lhood_expr}{A predictor expression}

\item{data}{Input data}

\item{state}{The state information, as a list of named vectors}

\item{A}{A-matrix information:
\itemize{
\item For \code{bru_component}: Precomputed A-matrix for the component
\item For \code{bru_like}: A list of named A-matrices for the components in the
likelihood for the component
\item For \code{bru_like_list}: A list, where each element is a list of named
A-matrices.
}}

\item{effects}{\itemize{
\item For \code{bru_component}:
Precomputed effect list for all components involved in the likelihood
expression
}}

\item{pred0}{Precomputed predictor for the given state}

\item{allow_latent}{logical. If \code{TRUE}, the latent state of each component is
directly available to the predictor expression, with a \verb{_latent} suffix.}

\item{allow_combine}{logical; If \code{TRUE}, the predictor expression may
involve several rows of the input data to influence the same row.}

\item{eps}{The finite difference step size}

\item{lhood}{A \code{bru_like} object}

\item{lhoods}{A \code{bru_like_list} object}
}
\description{
Compute inlabru model linearisation information
}
