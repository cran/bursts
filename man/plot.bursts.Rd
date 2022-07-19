\name{plot.bursts}
\alias{plot.bursts}
\title{
Plots a burst model
}
\description{
This method produces a simple plot of the burst structure produced by the \code{kleinberg} function.
}
\usage{
\method{plot}{bursts}(x, ...)
}
\arguments{
  \item{x}{
a data frame produced by the \code{kleinberg} function.
}
  \item{...}{
other parameters are passed along to \code{plot}.
}
}
\details{
Horizontal bars represent the `bursts,' with their vertical position indicating the level (i.e. intensity) and the x axis representing time.  Bars appear above others to represent the hierarchical structure that emerges when long bursts contain sub-bursts of even higher activity.
}
\value{
No return value; called to produce a plot.
}
\references{
J. Kleinberg. Bursty and Hierarchical Structure in Streams. Proc. 8th ACM SIGKDD Intl. Conf. on Knowledge Discovery and Data Mining, 2002.

http://www.cs.cornell.edu/home/kleinber/kdd02.html
}
\author{
Jeff Binder
}

\seealso{
\code{\link{kleinberg}}
}
\examples{
offsets <- c(seq(0, 400, 100), seq(410, 450, 5), seq(451, 470, 2),
             seq(480, 600, 5), 700, seq(710, 800, 5), 900, 1000)
bursts <- kleinberg(offsets)
plot(bursts)
}

\keyword{ hplot }
