\name{CF_date_range}
\alias{CF_date_range}

\title{ NetCDF-CF Date Intersection }

\description{
	This function takes units and values to describe a NetCDF time coordinate variable and a start/end year. It returns.
}

\usage{ CF_bbox_grid(time_units, time_dim, start, end) }

\arguments{
	\item{time_units}{A time units string from a netCDF time coordinate variable.}
  \item{time_dim}{The values of a netCDF time coordinate variable.}
  \item{start}{A four digit year to get the starting index for.}
  \item{end}{A four digit year to get the ending index for.}
}

\details{
	This function is only meant to work for full calendar years.
}
\value{ A named list containing the following variables 
       \enumerate{
  	      \item{t_ind1}
            Index position for the first value in the start year.
          \item{t_ind2}
            Index position for the last value of the end year.
          \item{time}
            Values of the time coordinate variable for the requested period.
          \item{origin}
            The calendar origin for use as the 'origin' input to chron.
}
}

\author{ David Blodgett \email{dblodgett@usgs.gov} }

\examples{

Using ncdf4 and remote data:

library("ncdf4")
start<-1950
end<-1951
OPeNDAP_URI<-"http://cida.usgs.gov/thredds/dodsC/prism"
ncdf4_handle <- nc_open(OPeNDAP_URI)
time_units<-strsplit(ncdf4_handle$dim$time$units, " ")[[1]]
time_dim<-ncdf4_handle$dim$time$vals
CF_date_range(time_units, time_dim, start, end)

Using sample data:

data(CF_date_range_example, package='climates')
CF_date_range(time_units, time_dim, start, end)

}

