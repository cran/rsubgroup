\name{SDTaskConfig-class}
\docType{class}
\alias{SDTaskConfig-class}
\alias{SDTaskConfig}

\title{Class ``SDTaskConfig'' --- A Set of Configuration
	Settings}	
\description{A Set of Configuration Settings for the Subgroup
	and Pattern Mining Algorithms}

\section{Objects from the Class}{
  Objects are created by calls of the form
  \code{new("SDTaskConfig", ...)}.
}

\section{Slots}{
  \describe{
    \item{\code{qf}:}{A quality function; one of:
	Binomial-Test \code{bin},
	Chi-Square-Test \code{chi2},
	Lift \code{lift},
	Piatetsky-Shapiro \code{ps},
	Gain \code{gain},
	Relative Gain \code{relgain},
	Weighted Relative Accuracy \code{wracc}.
	}
    \item{\code{method}:}{A mining method; one of
	Beam-Search \code{beam},
	BSD \code{bsd},
	SD-Map \code{sdmap},
	SD-Map enabling internal disjunctions \code{sdmap-dis}.
	}
    \item{\code{k}:}{The maximum number (top-k) of patterns
	to discover.}
	\item{\code{minqual}}{The minimal quality.}
	\item{\code{minsize}}{The minimal size of a subgroup
	(minimal coverage of database records).}
	\item{\code{maxlen}}{The maximal description length of
	a pattern, i.e., the maximal number of conjunctions.}
	\item{\code{nodefaults}}{Ignore default values, i.e.,
	do not include the respective first value of each
	attribute}
	\item{\code{relfilter}}{Controls, whether irrelevant
	patterns are filtered during pattern mining; negatively
	impacts performance.}
	\item{\code{postfilter}}{Controls, whether a post-processing
	filter is applied; one of:
	Minimum Improvement (Global) \code{min-improve-global},
	checks the patterns against all possible generalizations,
	Minimum Improvement (Pattern Set) \code{min-improve-set},
	checks the patterns against all their generalizations
	in the result set,
	Relevancy Filter \code{relevancy}, removes patterns that
	are strictly irrlevant,
	Significant Improvement (Global) \code{sig-improve-global},
	removes patterns that do not significantly improve
	(0.05 level) w.r.t. all their possible generalizations,
	Significant Improvement (Set) \code{sig-improve-set},
	removes patterns that do not significantly improve
	(0.05 level) w.r.t. all generalizations in the result set.
	}
	\item{\code{attributes}}{The list of attributes to consider for mining.
	Either a vector of attribute names, or NULL, which includes all attributes.}
	}
 }
\seealso{
\code{\link{DiscoverSubgroups}}.
\code{\link{DiscoverSubgroupsByTask}}
\code{\link{CreateSDTask}}
}
  
\keyword{classes}
	