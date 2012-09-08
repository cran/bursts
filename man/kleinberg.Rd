\name{kleinberg}
\alias{kleinberg}
\title{
Detects periods of increased activity in a stream of events
}
\description{
This function attempts to identify `bursts' of activity in a series of discrete events that take place at known times, based on an infinite hidden Markov model.  An optimal state sequence is computed that balances the total trasition cost against the probability of the observed event timing.
}
\usage{
kleinberg(offsets, s = 2, gamma = 1)
}
\arguments{
  \item{offsets}{
a vector containing the time offsets (numeric or Date) of the relevant events.
}
  \item{s}{
the base of the exponent used to determine event frequencies in a given state.
}
  \item{gamma}{
a coefficient that modifies the cost of a transition to a higher state.
}
}
\details{
The model is a hidden Markov process in which, after each event, the state of the system probablistically determines how much time will pass until the next event occurs.  While the system is in state \code{i}, the gaps between events are assumed to be drawn from an exponential distribution with expected value proportional to \code{s ** -i}.  The value of \code{s} may be modified; higher values increase the strictness of the algorithm's criterion for how dramatic an increase of activity has to be to be considered a `burst.'

The cost of a state change is proportional to the increase in state number; this proportion can be modified by setting the parameter \code{gamma}.  Higher values mean roughly that bursts must be sustained over longer periods of time in order for the algorithm to recognize them.

Note that the algorithm will not work if there are two events that occur at the same time.
}
\value{
Returns a data frame of class `bursts.'  Each row represents a (maximal) interval of time in which the system was at or above a given level of activity.  The first row always indicates a period at level 1+ lasting from the time of the first event to the time of the last; subsequent rows always indicate levels greater than 1, and thus represent `bursts.'

The `start' time of a burst is defined as the time of the event that precedes the state change.  This is so that the time interval of a burst contains the first unusually short gap between events, rather than beginning immediately after it.

As per Kleinberg, if the system goes through a burst that increases the level by more than 1, a separate row is created for each level that it goes through.
}
\references{
J. Kleinberg. Bursty and Hierarchical Structure in Streams. Proc. 8th ACM SIGKDD Intl. Conf. on Knowledge Discovery and Data Mining, 2002.

http://www.cs.cornell.edu/home/kleinber/kdd02.html
}
\author{
Jeff Binder
}

\seealso{
\code{\link{plot.bursts}}
}
\examples{
offsets <- c(seq(0, 400, 100), seq(410, 450, 5), seq(451, 470, 2),
             seq(480, 600, 5), 700, seq(710, 800, 5), 900, 1000)
bursts <- kleinberg(offsets)
plot.bursts(bursts)
}

\keyword{ models }
