\name{as.target}
\alias{as.target}
\title{Constructs a target variable (for subgroup discovery)}
\description{
Constructs a target variable, i.e., an object suitable to
be passed to DiscoverSubgroups or CreateSDTask.
}
\usage{
as.target(attribute, value=NULL)
}
\arguments{
\item{attribute}{The attribute of the target variable.}
\item{value}{For binary targets, the respective attribute
		 value; the value is NULL for numeric
		 targets.}
}
\seealso{
\code{\link{DiscoverSubgroups}}.
}
\examples{
# creating a target variable
# binary:
as.target("class", "true")

#numeric:
as.target("numeric_class")
}
\keyword{target variable}
