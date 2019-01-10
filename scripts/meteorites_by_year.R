ggplot(Meteorite_Landings_orignal, aes(x=year, color=fall)) + 
  geom_freqpoly(binwidth=1) +
  xlim(1900,2000) +
  
