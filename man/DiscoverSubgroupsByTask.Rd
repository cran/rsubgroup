\name{DiscoverSubgroupsByTask}
\alias{DiscoverSubgroupsByTask}
\title{Performs Subgroup Discovery for a given Task}
\description{
Performs subgroup discovery according to the given task.
}
\usage{
DiscoverSubgroupsByTask(task, as.df=FALSE)
}
\arguments{
\item{task}{a subgroup discovery task constructed by
 CreateSDTask.}
 \item{as.df}{TRUE, if the result patterns should be returned
as a data.frame using \code{\link{ToDataFrame}}}
}
\seealso{
\code{\link{DiscoverSubgroups}}.
\code{\link{CreateSDTask}}
}
\examples{
# creating a task
data(credit.data)
task <- CreateSDTask(credit.data, as.target("class", "bad"))
taskNum <- CreateSDTask(credit.data, as.target("credit_amount"))

# running the tasks
DiscoverSubgroupsByTask(task)
DiscoverSubgroupsByTask(taskNum)
}
\keyword{subgroup task}

