% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_methods.R
\docType{methods}
\name{getZ}
\alias{getZ}
\alias{getZ,MizerParams,matrix,numeric,numeric,matrix-method}
\alias{getZ,MizerParams,matrix,numeric,numeric,missing-method}
\title{Get total mortality rate}
\usage{
getZ(object, n, n_pp, effort, m2)

\S4method{getZ}{MizerParams,matrix,numeric,numeric,matrix}(object, n, n_pp,
  effort, m2)

\S4method{getZ}{MizerParams,matrix,numeric,numeric,missing}(object, n, n_pp,
  effort)
}
\arguments{
\item{object}{A \code{MizerParams} object.}

\item{n}{A matrix of species abundance (species x size).}

\item{n_pp}{A vector of the background abundance by size.}

\item{effort}{A numeric vector of the effort by gear or a single numeric
effort value which is used for all gears.}

\item{m2}{A two dimensional array of predation mortality (optional). Has
dimensions no. sp x no. size bins in the community. If not supplied is
calculated using the \code{getM2()} method.}
}
\value{
A two dimensional array (prey species x prey size).
}
\description{
Calculates the total mortality rate \eqn{\mu_i(w)} on each species by size
from predation mortality, background mortality and fishing mortality
for a single time step.

\code{getZ} method with \code{m2} argument.

\code{getZ} method without \code{m2} argument.
}
\examples{
\dontrun{
data(NS_species_params_gears)
data(inter)
params <- MizerParams(NS_species_params_gears, inter)
# Project with constant fishing effort for all gears for 20 time steps
sim <- project(params, t_max = 20, effort = 0.5)
# Get the total mortality at a particular time step
getZ(params,sim@n[21,,],sim@n_pp[21,],effort=0.5)
}
}
\seealso{
\code{\link{getM2}}, \code{\link{getFMort}}
}
