# replaced entries with zero mass with NA
Meteorite_Landings_orignal[Meteorite_Landings_orignal == 0] <- NA
# took out any rows with NAs
#meteorite_landings_300 <- meteorite_landings_300[complete.cases(meteorite_landings_300), ]
Meteorite_Landings_orignal <- Meteorite_Landings_orignal[complete.cases(Meteorite_Landings_orignal), ]
# year column contains only year (all days and times Jan 1 at midnight) stripped down to numerical year
dates <- as.Date(Meteorite_Landings_orignal$year, "%m/%d/%Y")
years <- year(dates)
Meteorite_Landings_orignal$year <- years
#ggplot(Meteorite_Landings_orignal, aes(x=reclong, y=reclat)) + geom_point()
#ggplot(meteorite_landings_300, aes(x=mass..g.)) + geom_histogram()
# noted one outlier of ~ 2,000 kg
#ggplot(meteorite_landings_300, aes(x=mass..g.)) + geom_histogram() + xlim(0,1.00e+4)
ggplot(Meteorite_Landings_orignal, aes(x=mass..g.)) + stat_ecdf(geom = "step", pad = FALSE) + xlim(0,1000) + scale_x_continuous(trans='log10') +  annotation_logticks(sides = "b")
ggplot(Meteorite_Landings_orignal, aes(x=year)) + geom_histogram() + xlim(1800,2020)


       
