\name{Pattern-class}
\docType{class}
\alias{Pattern-class}
\alias{Pattern}

\title{Class ``Pattern'' --- A Simple Subgroup Description Container}   
\description{A Simple Container holding the results (subgroups, description and
    parameters) for the Subgroup and Pattern Mining Algorithms}

\section{Objects from the Class}{
  Objects are created by calls of the form
  \code{new("Pattern", ...)}.
}

\section{Slots}{
  \describe{
    \item{\code{description}:}{The subgroup description,
    as a character vector.
    }
    \item{\code{quality}:}{The numeric value denoting the
    quality of the subgroup pattern as determined by the applied
    quality function.
    }
    \item{\code{size}:}{The size of the subgroup.}
    \item{\code{parameters}}{Additional quality parameters of the subgroup.}
    }
 }
\seealso{
\code{\link{DiscoverSubgroups}}.
\code{\link{DiscoverSubgroupsByTask}}
\code{\link{CreateSDTask}}
}
  
\keyword{classes}
