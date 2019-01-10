ggplot(Meteorite_Landings_orignal, aes(x=year, color=fall)) + 
  geom_freqpoly(binwidth=1) +
  xlim(1900,2000) +
  scale_y_continuous(trans='log10') +
  labs(
    title = "Annual Meteorite Discoveries\n1900-2000",
    x = "Year",
    y = "Meteorites",
    caption = "Data from NASA Open Data Portal & The Meteoritical Society") +
  scale_color_manual(
    values=c("#E69F00", "#56B4E9"), 
    breaks=c("Fell", "Found"),
    labels=c("Fall observed", "Fall not observed")) +
  theme(legend.position=c(.3, .8),
    plot.title = element_text(size=28, hjust=0.5),
    axis.title = element_text(size=26),
    axis.text = element_text(size=18),
    legend.text = element_text(size=18),
    legend.title=element_blank())

ggsave('plots/meteorites_1900-2000.png', width = 8, height = 8, dpi = 300)