# replaced entries with zero mass with NA
Meteorite_Landings_orignal[Meteorite_Landings_orignal == 0] <- NA

# took out any rows with NAs
Meteorite_Landings_orignal <- Meteorite_Landings_orignal[complete.cases(Meteorite_Landings_orignal), ]

# year column contains only year (all days and times Jan 1 at midnight) stripped down to numerical year
dates <- as.Date(Meteorite_Landings_orignal$year, "%m/%d/%Y")
years <- year(dates)
Meteorite_Landings_orignal$year <- years

write.table(x = Meteorite_Landings_orignal, file = "data/Meteorite_Landings_orignal_clean.csv")


       
