\name{CreateSDTask}
\alias{CreateSDTask}
\title{Creates a Subgroup Discovery Task}
\description{
Performs subgroup discovery according to the given task.
}
\usage{
CreateSDTask(source, target, config = SDTaskConfig())
}
\arguments{
\item{source}{a data.frame or the a character string giving
the filename of an ARFF file to use. Providing a file name
directly provides the data to the subgroup discovery
algorithms on the Java side, which is more memory efficient
than converting the data frame to the Java representation.}
\item{target}{the target variable (constructed by as.target)
to consider for subgroup discovery.}
\item{config}{an instance of SDTaskConfig providing various
parameters for subgroup discovery.}
}
\seealso{
\code{\link{DiscoverSubgroups}}.
\code{\link{DiscoverSubgroupsByTask}}
\code{\link{SDTaskConfig}}
}
\examples{
# creating a task
data(credit.data)

# task with binary target
task <- CreateSDTask(credit.data, as.target("class", "good"))

# task with numeric target
taskNum <- CreateSDTask(credit.data, as.target("credit_amount"))
}
\keyword{subgroup task}