###############################################################################
#    rsubgroup package R classes
# 
#    This file is part of the rsubgroup package.
#    Copyright (C) 2011-2019 by Martin Atzmueller
#    
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    Contact: Martin Atzmueller (martin@atzmueller.net)
###############################################################################

.GetAllAttributesAsJArray <- function(ontology) {
  attributeSetObject <- J(ontology, "getAttributes")
  attributeArrayObject <- J(attributeSetObject, "toArray")
  attributeArray <- .jevalArray(attributeArrayObject)
  attributeIDs <- sapply(attributeArray, FUN=function(a) {J(a, "getId")}, simplify = TRUE)
  return(.jarray(attributeIDs))
}

setClassUnion(".vectorOrNull", members=c("vector", "NULL"))
setClassUnion(".vectorOrCharacter", members=c("vector", "character"))

setClass("SDTaskConfig",
    representation(
        qf          = "character",
        method      = "character",
        k           = "numeric",
        minqual     = "numeric",
        minsize     = "numeric",
        mintp       = "numeric",
        maxlen      = "numeric",
        nodefaults  = "logical",
        relfilter   = "logical",
        postfilter  = ".vectorOrCharacter",
        attributes  = ".vectorOrNull",
        parfilter   = "numeric",
		discretize  = "logical",
		nbins       = "numeric"		
    ),
    prototype(qf="ps", method="sdmap", k = as.integer(20),
        minqual = as.integer(0), minsize = as.integer(0), mintp = as.integer(0),
        maxlen = as.integer(7), nodefaults = FALSE, relfilter = FALSE,
        postfilter = "", parfilter = 0.05, discretize = TRUE, nbins = 3,
		attributes = NULL)
)

SDTaskConfig <- function(...){
  new("SDTaskConfig", ...)
}

setClass("Pattern",
    representation(
        description="character",
        selectors="list",
        quality="numeric",
        size="numeric",
        parameters="list"
    )
)