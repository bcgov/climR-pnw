% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gcm.R
\name{gcm_input}
\alias{gcm_input}
\title{Create gcm input for \code{downscale}.}
\usage{
gcm_input(
  gcm = list_gcm(),
  ssp = list_ssp(),
  period = list_period(),
  max_run = 0L
)
}
\arguments{
\item{gcm}{A character vector. Label of the global circulation models to use.
Can be obtained from \code{list_gcm()}. Default to \code{list_gcm()}.}

\item{ssp}{A character vector. Label of the shared socioeconomic pathways to use.
Can be obtained from \code{list_ssp()}. Default to \code{list_ssp()}.}

\item{period}{A character vector. Label of the period to use.
Can be obtained from \code{list_period()}. Default to \code{list_period()}.}

\item{max_run}{An integer. Maximum number of model runs to include.
A value of 0 is \code{ensembleMean} only. Runs are included in the order they are found in the
models data untile \code{max_run} is reached. Default to 0L.}
}
\value{
An object to use with \code{downscale}. A \code{SpatRaster} with, possibly, multiple layers.
}
\description{
Create gcm input for \code{downscale}.
}
\details{
Will use raster package for now. Switch to terra methods once it gets
better performance. See
https://gis.stackexchange.com/questions/413105/terrarast-vs-rasterbrick-for-loading-in-nc-files.
}
