\name{is.pattern.matching}
\alias{is.pattern.matching}
\title{Tests whether a pattern and a data list (row of a data frame) match}
\description{
Tests whether a pattern and a data list (row of a data frame) match, e.g.,
for implementing classification methods.
}
\usage{
is.pattern.matching(pattern, data.list)
}
\arguments{
\item{pattern}{An instance of class Pattern, e.g., returned by DiscoverSubgroups.}
\item{data.list}{A list having the attributes as 'keys', and the values as
respective values of the list. This corresponds, for example, to a row of a
data frame.}
}
\seealso{
\code{\link{Pattern-class}}.
}
\keyword{test pattern}