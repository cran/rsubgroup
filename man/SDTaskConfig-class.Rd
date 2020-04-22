\name{SDTaskConfig-class}
\docType{class}
\alias{SDTaskConfig-class}

\title{Class ``SDTaskConfig'' --- A Set of Configuration
	Settings}	
\description{A Set of Configuration Settings for the Subgroup
	and Pattern Mining Algorithms}

\section{Objects from the Class}{
  Objects are created by calls of the form
  \code{SDTaskConfig(...)}.
}

\section{Slots}{
  \describe{
    \item{\code{attributes}:}{The list of attributes to consider for mining.
    Either a vector of attribute names, or NULL (the default),
    which includes all attributes.} 
    \item{\code{method}:}{A mining method; one of
    Beam-Search \code{beam},
    BSD \code{bsd},
    SD-Map \code{sdmap},
    SD-Map enabling internal disjunctions \code{sdmap-dis}.
    The default is \code{method = "sdmap"}.
    }
    \item{\code{qf}:}{A quality function; one of:
    Adjusted Residuals \code{ares},
	Binomial Test \code{bin},
	Chi-Square Test \code{chi2},
	Gain \code{gain},
	Lift \code{lift},
	Piatetsky-Shapiro \code{ps},
	Relative Gain \code{relgain},
	Weighted Relative Accuracy \code{wracc}.
	The default is \code{qf = "ps"}.
	}    
    \item{\code{k}:}{The maximum number (top-k) of patterns
	to discover, i.e., the best k rules according to the selected
	quality function. The default is \code{k = 20}}
	\item{\code{minqual}:}{The minimal quality (default \code{minqual = 0}).}
	\item{\code{minsize}:}{The minimal size of a subgroup (as an integer)
	(minimal coverage of database records, default \code{minsize = 0}).}
	\item{\code{mintp}:}{The minimal true positive (tp) threshold, an integer
	(minimal (absolute) number of true positives in a subgroup, relevant for
	binary target concepts only), defaults to \code{mintp = 0}}.
	\item{\code{maxlen}:}{The maximal length of a description of
	a pattern, i.e., the maximal number of conjunctions. This impacts both
	understandability and efficiency. Simpler rules are easier to understand,
	and a small \code{maxlen} will restrict the search space (default \code{maxlen = 7}).}
	\item{\code{nodefaults}:}{Ignore default values, i.e.,
	do not include the respective first value (with index 0) of each
	attribute (default \code{nodefaults=FALSE}, i.e., include all values).}
	\item{\code{relfilter}:}{Controls, whether irrelevant
	patterns are filtered during pattern mining; negatively
	impacts performance (default \code{relfilter = FALSE})).}
	\item{\code{postfilter}:}{Controls, whether a post-processing
	filter is applied; one (or a vector) of:
	Minimum Improvement (Global) \code{min-improve-global},
	checks the patterns against all possible generalizations,
	Minimum Improvement (Pattern Set) \code{min-improve-set},
	checks the patterns against all their generalizations
	in the result set,
	Relevancy Filter \code{relevancy}, removes patterns that
	are strictly irrelevant,
	Significant Improvement (Global) \code{sig-improve-global},
	removes patterns that do not significantly improve
	(default 0.01 level) w.r.t. all their possible generalizations,
	Significant Improvement (Set) \code{sig-improve-set},
	removes patterns that do not significantly improve
	(default 0.01 level) w.r.t. all generalizations in the result set,
	Weighted Covering \code{weighted-covering}, performs weighted
	covering on the data in order to select a covering set of
	subgroups while reducing the overlap on the data. 
	By default no postfilter is set, i.e., \code{postfilter = ""}.
	}
	\item{\code{parfilter}:}{Provides the minimal improvement value for the
	postfilter (for min-improve-* filters), or the significance level (P) for
	sig-improve-* filters.
	}
  }
 }
\seealso{
\code{\link{DiscoverSubgroups}}.
\code{\link{DiscoverSubgroupsByTask}}
\code{\link{CreateSDTask}}
}
  
\keyword{classes}
	