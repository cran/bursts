\name{bursts-package}
\alias{bursts-package}
\alias{bursts}
\docType{package}
\title{
Markov model for bursty behavior in streams
}
\description{
An implementation of Jon Kleinberg's burst detection algorithm. Uses an infinite Markov model to detect periods of increased activity in a series of discrete events with known times, and provides a simple visualization of the results.
}
\details{
\tabular{ll}{
Package: \tab bursts\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-09-08\cr
License: \tab MIT\cr
}
The function \code{kleinberg} performs the analysis, returing a data frame containing a list of all of the `bursts' and their intensities.  The function \code{plot.bursts} can be used to display a simple visualization of the hierarchical burst structure.
}
\author{
Jeff Binder

Maintainer: Jeff Binder <extruded@gmail.com>
}
\references{
J. Kleinberg. Bursty and Hierarchical Structure in Streams. Proc. 8th ACM SIGKDD Intl. Conf. on Knowledge Discovery and Data Mining, 2002.

http://www.cs.cornell.edu/home/kleinber/kdd02.html
}
\keyword{ models }
