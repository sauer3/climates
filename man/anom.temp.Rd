\name{anom.temp}
\alias{anom.temp}

\title{ Temperature Anomoly Calculation }

\description{ 
	\code{anom.temp} provides a method to estimate the anomoly as an absolute difference of the future or past climate relative to the current. 
}

\usage{ anom.temp(nc1, nc2) }

\arguments{
	\item{nc1}{a list object as created by \code{\link{retrieve.nc}}, \code{\link{extract.monthly.average}} or \code{\link{append.nc}}. The minimum set of elements in the list must be dat, lat, lon and tim. See value for a description of these elements. }
	\item{nc2}{a list object as described in \code{nc1}. }
}

\value{ 
	returns an object that is a list with the same elements as nc1 with the \code{dat} element being the anomoly as a proportion of current.\cr\cr
	the list will contain at least:
	\item{dat}{an array containing the anomoly data. The dimensions of the array represent:\cr
	1 - time described in this list by \code{tim}\cr
	2 - latitude (or y element) described in this list by \code{lat}\cr
	3 - longitude (or x element) described in this list by \code{lon}}
	\item{lat}{vector of latitudes}
	\item{lon}{vector of longitudes}
	\item{tim}{vector describing the time element either in e.g., julian days, months or years}
}

\author{ Jeremy VanDerWal \email{jjvanderwal@gmail.com} }

\seealso{ \code{\link{anom.prec}}, \code{\link{retrieve.nc}}, \code{\link{extract.monthly.average}},  \code{\link{append.nc}} }

\examples{ ##need to fill in }
