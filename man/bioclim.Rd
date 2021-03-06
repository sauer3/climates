\name{bioclim}
\alias{bioclim}

\title{ Bioclim - Bioclimatic Variables }

\description{
	\code{bioclim} recreates the standard 19 bioclimatic variables (BIOCLIM) created using ANUCLIM \url{http://fennerschool.anu.edu.au/publications/software/anuclim.php} or used by Worldclim \url{http://www.worldclim.org/}. \cr \cr
	These measures are described below but include annual and quarterly summaries of temperature and precipitation.
}

\usage{ bioclim(tmin=NULL, tmax=NULL, prec=NULL, tmean=NULL, vois=1:19, cov=FALSE,
 t.as.int=TRUE, period="month") }

\arguments{
	\item{tmin}{a data.frame or matrix with 12 or 52 columns representing monthly or weekly minimum temperature data; rows represent different locations.}
	\item{tmax}{a data.frame or matrix as with \code{tmin} representing maximum temperature data.}
	\item{prec}{a data.frame or matrix as with \code{tmin} representing precipitation data.}
	\item{tmean}{a data.frame or matrix as with \code{tmin} representing mean temperature data.}
	\item{vois}{a vector of values between 1 & 19 defining the bioclimatic variables to be calculated; see details for variable description.}
	\item{cov}{a boolean value where TRUE represents Temperature seasonality (4) is calculated as in ANUCLIM and FALSE is calclated as with Worldclim; see details for further information. }
	\item{t.as.int}{a boolean value where TRUE will convert all temperature values to integers by rounding(temp*10); FALSE will leave temperater values as is.}
	\item{period}{can be either "month" or "week" representing the temporal period for which values are calculated; see details for further description.}
}

\details{
	The variables created here are based primarily on BIOCLIM variables created by ANUCLIM \url{http://fennerschool.anu.edu.au/publications/software/anuclim.php}. Below is a description of the variables and how they are calculated from the ANUCLIM website, with Temperature Seasonality description modified for the different method Worldclim uses.\cr\cr
	The descriptions below assume you are using a weekly time step. If you are using months, the monthly values rather than the weekly values will be used when calculating these parameters.\cr\cr
	The quarterly parameters are not aligned to any calendar quarters. BIOCLIM's definition of a quarter is any 13 consecutive weeks, (or any consecutive 3 months if running with a monthly time step). For example, the driest quarter will be the 13 consecutive weeks that are drier than any other set of 13 consecutive weeks.\cr\cr
	\enumerate{
		\item \bold{Annual Mean Temperature}\cr
			The mean of all the weekly mean temperatures. Each weekly mean temperature is the mean of that week's maximum and minimum temperature.
		\item \bold{Mean Diurnal Range(Mean(period max-min))}\cr
			The mean of all the weekly diurnal temperature ranges. Each weekly diurnal range is the difference between that week's maximum and minimum temperature.
		\item \bold{Isothermality 2/7}\cr
			The mean diurnal range (parameter 2) divided by the Annual Temperature Range (parameter 7).
		\item \bold{Temperature Seasonality}\cr
			ANUCLIM (\code{cov}=TRUE) returns the temperature Coefficient of Variation (C of V) as the standard deviation of the weekly mean temperatures expressed as a percentage of the mean of those temperatures (i.e. the annual mean). For this calculation, the mean in degrees Kelvin is used. This avoids the possibility of having to divide by zero, but does mean that the values are usually quite small.\cr
			Worldclim (\code{cov}=FALSE) returns the the standard deviation of the weekly mean temperatures.
		\item \bold{Max Temperature of Warmest Period}\cr
			The highest temperature of any weekly maximum temperature.
		\item \bold{Min Temperature of Coldest Period}\cr
			The lowest temperature of any weekly minimum temperature.
		\item \bold{Temperature Annual Range (5-6)}\cr
			The difference between the Max Temperature of Warmest Period and the Min Temperature of Coldest Period.
		\item \bold{Mean Temperature of Wettest Quarter}\cr
			The wettest quarter of the year is determined (to the nearest week), and the mean temperature of this period is calculated.
		\item \bold{Mean Temperature of Driest Quarter}\cr
			The driest quarter of the year is determined (to the nearest week), and the mean temperature of this period is calculated.
		\item \bold{Mean Temperature of Warmest Quarter}\cr
			The warmest quarter of the year is determined (to the nearest week), and the mean temperature of this period is calculated.
		\item \bold{Mean Temperature of Coldest Quarter}\cr
			The coldest quarter of the year is determined (to the nearest week), and the mean temperature of this period is calculated.
		\item \bold{Annual Precipitation}\cr
			The sum of all the monthly precipitation estimates.
		\item \bold{Precipitation of Wettest Period}\cr
			The precipitation of the wettest week or month, depending on the time step.
		\item \bold{Precipitation of Driest Period}\cr
			The precipitation of the driest week or month, depending on the time step.
		\item \bold{Precipitation Seasonality(C of V)}\cr
			The Coefficient of Variation (C of V) is the standard deviation of the weekly precipitation estimates expressed as a percentage of the mean of those estimates (i.e. the annual mean).
		\item \bold{Precipitation of Wettest Quarter}\cr
			The wettest quarter of the year is determined (to the nearest week), and the total precipitation over this period is calculated.
		\item \bold{Precipitation of Driest Quarter}\cr
			The driest quarter of the year is determined (to the nearest week), and the total precipitation over this period is calculated.
		\item \bold{Precipitation of Warmest Quarter}\cr
			The warmest quarter of the year is determined (to the nearest week), and the total precipitation over this period is calculated.
		\item \bold{Precipitation of Coldest Quarter}\cr
			The coldest quarter of the year is determined (to the nearest week), and the total precipitation over this period is calculated.
	}
}
\value{ a matrix with columns representing variables requested and the number of rows(and order of them) the same as the input \code{tmin}, \code{tmax}, \code{prec} or \code{tmean}. }

\author{ Jeremy VanDerWal \email{jjvanderwal@gmail.com} }

\examples{

#need to fill in

}

