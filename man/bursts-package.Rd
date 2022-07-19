\name{bursts-package}
\alias{bursts-package}
\alias{bursts}
\docType{package}
\title{
Markov Model for Bursty Behavior in Streams
}
\description{
An implementation of Jon Kleinberg's burst detection algorithm. Uses an infinite Markov model to detect periods of increased activity in a series of discrete events with known times, and provides a simple visualization of the results.
}
\details{
\tabular{ll}{
Package: \tab bursts\cr
Type: \tab Package\cr
Version: \tab 1.0-2\cr
Date: \tab 2022-07-14\cr
License: \tab MIT\cr
}
The function \code{kleinberg} performs the analysis, returing a data frame containing a list of all of the `bursts' and their intensities.  The function \code{plot.bursts} can be used to display a simple visualization of the hierarchical burst structure.
}
\author{
Jeff Binder

Maintainer: Jeff Binder <extruded@gmail.com>
}
\references{
Kleinberg, J. (2003). "Bursty and Hierarchical Structure in Streams." Data Mining and Knowledge Discovery \strong{7}: 373-397. <doi:10.1023/A:1024940629314>

http://www.cs.cornell.edu/home/kleinber/kdd02.html
}
\keyword{ models }
