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
library(rsubgroup)

data(credit.data)

patterns.from.data.table <- DiscoverSubgroups(
		credit.data,
		as.target("class", "bad"),
		new("SDTaskConfig", discretize = FALSE))
result.data.frame <- ToDataFrame(patterns.from.data.table)

patterns.from.data.table <- DiscoverSubgroups(
		credit.data,
		as.target("class", "bad"),
		new("SDTaskConfig", discretize = TRUE, nbins = 3,
				attributes = c("checking_status", "duration", "credit_amount")))
result.data.frame <- ToDataFrame(patterns.from.data.table)