\name{rsubgroup}
\alias{rsubgroup}
\docType{package}
\title{
rsubgroup Package
 - Algorithms and Tools for Efficient Subgroup Discovery and Analytics
}
\description{
The rsubgroup package contains a set of efficient and effective
 tools and algorithms for subgroup discovery and analytics.
The package integrates an R interface to the org.vikamine.kernel
library of the VIKAMINE system (http://www.vikamine.org).

Note:
rsubgroup uses rJava. To set the maximum available heap space for Java, the
.jinit command of rJava needs to be called before loading rsubgroup, i.e.

library(rJava)
.jinit(parameters="-Xmx2048M") # for two gigabytes heap space, for example
library(rsubgroup)

Please note that this needs to happen before rJava is used in any way. After
the JVM has been initialized (and started), setting the heap space has no effect
any more. Therefore, it is recommended to execute the .jinit(...) command right
after loading the rJava package. 
}
\details{
\tabular{ll}{
Package: \tab rsubgroup\cr
Type: \tab Package\cr
Version: \tab 0.7\cr
Date: \tab 2015-07-xx\cr
License: \tab GPL (>= 3)\cr
LazyLoad: \tab yes\cr
}
}
\author{
Martin Atzmueller

Maintainer: Martin Atzmueller <martin@atzmueller.net>
}
\references{
  \enumerate{
	\item Martin Atzmueller and Frank Puppe. SD-Map - A Fast Algorithm for Exhaustive Subgroup Discovery. Knowledge Discovery in Databases: PKDD 2006, LNAI 4213, pp. 6-17, Springer Verlag, 2006.
	\item Martin Atzmueller and Florian Lemmerich. Fast Subgroup Discovery for Continuous Target Concepts. In: Foundations of Intelligent Systems, LNCS 5722, pp. 35-44, Springer Verlag, 2009.
	\item Florian Lemmerich and Mathias Rohlfs and Martin Atzmueller. Fast Discovery of Relevant Subgroup Patterns. In: Proc. 23rd FLAIRS Conference, AAAI Press, 2010.
  }
}
\keyword{ package }