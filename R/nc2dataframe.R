#convert the anomoly work to a dataframe with xyz where the z columns are the different time values
#input is a object from append.nc or extract.monthly.averages or retrieve.nc
nc2dataframe <- 
function (nc) {
	#ensure nc is from retrieve.nc or similar
	if (all(c('dat','tim','lat', 'lon') %in% names(nc))==FALSE) stop('nc must have objects named dat, lat, lon and tim as from retrieve.nc of clim.pact package, append.nc or extract.monthly.averages')
	#do the work
	out = expand.grid(lat = nc$lat,lon = nc$lon); #get all possible combination s of lat & lon
	out = matrix(c(out$lat,out$lon,nc$dat),nrow=nrow(out),ncol=length(nc$tim)+2) #append all the data
	colnames(out) = c('lat','lon',paste('tim.',nc$tim,sep='')) #set the column names
	return(out)
}


