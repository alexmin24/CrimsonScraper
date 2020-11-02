source('styleguide.R')
house = read.csv("numbers.csv")
percentages = read.csv("percentages.csv")
totals = read.csv("totals.csv")
total_percentages=read.csv("total_percentages.csv")

# Plotting 
a <- ggplot(data=house, aes(x=year, y=winners)) +
  geom_line(aes(y = winners), color = "#EE3838") + 
  geom_line(aes(y = losers), color="4B5973") +
  geom_point() + 
  labs(title="Candidate Name Frequency in The Crimson") +
  xlab("Year") +
  ylab("Winning Article Numbers") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2020") + 
  theme_hodp() 
a
 
# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(a)


# Plotting 
b <- ggplot(data=percentages, aes(x=year, y=winners)) +
  geom_line(aes(y = winners), color = "#EE3838") + 
  geom_line(aes(y = losers), color="4B5973") +
  geom_point() + 
  labs(title="Candidate Name Frequency in The Crimson") +
  xlab("Year") +
  ylab("Percent of Articles per Candidate") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2020") + 
  theme_hodp() 
b

# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(b)

# Plotting 
c <- ggplot(data=totals, aes(x=year, y=winners)) +
  geom_line(aes(y = winners), color = "#EE3838") + 
  geom_line(aes(y = losers), color="4B5973") +
  geom_point() + 
  labs(title="Candidate Name Frequency in The Crimson") +
  xlab("Year") +
  ylab("Percent of Articles per Candidate") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2020") + 
  theme_hodp() 
c

# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(c)

# Plotting 
d <- ggplot(data=total_percentages, aes(x=year, y=winners)) +
  geom_line(aes(y = winners), color = "#EE3838") + 
  geom_line(aes(y = losers), color="4B5973") +
  geom_point() + 
  labs(title="Candidate Name Frequency in The Crimson") +
  xlab("Year") +
  ylab("Percent of Articles per Candidate") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2020") + 
  theme_hodp() 
d

# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(d)
