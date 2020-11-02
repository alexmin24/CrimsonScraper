source('styleguide.R')
house = read.csv("numbers.csv")
percentages = read.csv("percentages.csv")

# Plotting 
a <- ggplot(data=house, aes(x=year, y=winners)) +
  geom_line(aes(y = winners), color = "darkred") + 
  geom_line(aes(y = losers), color="steelblue", linetype="twodash") +
  geom_point() + 
  labs(title="Winners/Losers") +
  xlab("Year") +
  ylab("Winning Article Numbers") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1976 - 2018", caption = "Source: https://electionlab.mit.edu/data") + 
  theme_hodp() 
a
 
# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(a)


# Plotting 
b <- ggplot(data=percentages, aes(x=year, y=winners)) +
  geom_line(aes(y = winners), color = "darkred") + 
  geom_line(aes(y = losers), color="steelblue", linetype="twodash") +
  geom_point() + 
  labs(title="Winners/Losers") +
  xlab("Year") +
  ylab("Winning Article Numbers") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1976 - 2018", caption = "Source: https://electionlab.mit.edu/data") + 
  theme_hodp() 
b

# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(b)
