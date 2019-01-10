fell_found_by_year <- Meteorite_Landings_orignal %>%
  group_by(fall, year) %>%
  summarize(n())

colnames(fell_found_by_year) <- c("fall", "year", "count")

frac_found_by_year <- setDT(fell_found_by_year)[, frac := count / sum(count), by=year]

