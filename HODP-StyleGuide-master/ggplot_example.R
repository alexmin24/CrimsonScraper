source('styleguide.R')
house = read.csv("numbers.csv")
percentages = read.csv("percentages.csv")
totals = read.csv("totals.csv")
total_percentages=read.csv("total_percentages.csv")
sentiments=read.csv("sentiments.csv")

# Plotting 
a <- ggplot(data=house, aes(x=year, y=winners)) +
  geom_line(aes(y = winners, color="Winner"), color = "#EE3838") + 
  geom_line(aes(y = losers, color="Loser"), color="4B5973") +
  geom_point(aes(color="Winner")) + 
  geom_point(aes(color="Loser")) + 
  scale_color_manual(values = c("#EE3838", "#4B5973"),name="Outcome", labels = c('Winner', 'Loser')) +
  labs(title="Article Frequency in The Crimson") +
  xlab("Year") +
  ylab("Number of Articles per Candidate") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2016") + 
  theme_hodp() 
a
 
# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(a)


# Plotting 
b <- ggplot(data=percentages, aes(x=year, y=winners)) +
  geom_line(aes(y = winners, color="Winner"), color = "#EE3838") + 
  geom_line(aes(y = losers, color="Loser"), color="4B5973") +
  geom_point(aes(color="Winner")) + 
  geom_point(aes(color="Loser")) + 
  scale_color_manual(values = c("#EE3838", "#4B5973"),name="Outcome", labels = c('Winner', 'Loser')) +
  labs(title="Article Frequency in The Crimson") +
  xlab("Year") +
  ylab("Percentage of Articles per Candidate") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2016") + 
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
  labs(subtitle = "1956 - 2016") + 
  theme_hodp() 
c

# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(c)

# Plotting 
d <- ggplot(data=total_percentages, aes(x=year, y=winners)) +
  geom_line(aes(y = winners, color="Winner"), color = "#EE3838") + 
  geom_line(aes(y = losers, color="Loser"), color="4B5973") +
  geom_point(aes(color="Winner")) + 
  geom_point(aes(color="Loser")) + 
  scale_color_manual(values = c("#EE3838", "#4B5973"),name="Outcome", labels = c('Winner', 'Loser')) +
  labs(title="Candidate Name Frequency in The Crimson") +
  xlab("Year") +
  ylab("Percent of Articles per Candidate") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2016") + 
  theme_hodp() 
d

# Add logo
grid::grid.raster(logo, x = 0.01, y = 0.01, just = c('left', 'bottom'), width = unit(2, 'cm'))

# Interactive Graphic
ggplotly(d)

# Plotting 
e <- ggplot(data=sentiments, aes(x=year, y=winners_polarity,losers_polarity)) +
  geom_line(aes(y = winners_polarity, color="Winner"), color = "#EE3838") + 
  geom_line(aes(y = losers_polarity, color="Loser"), color="4B5973") +
  geom_point(aes(color="Winner")) + 
  geom_point(aes(color="Loser")) + 
  scale_color_manual(values = c("#EE3838", "#4B5973"),name="Outcome", labels = c('Winner', 'Loser')) +
  labs(title="Polarity for Each Candidate") +
  xlab("Year") +
  ylab("Polarity") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2016") + 
  theme_hodp() 
e

f <- ggplot(data=sentiments, aes(x=year, y=winners_subjectivity,losers_subjectivity)) +
  geom_line(aes(y = winners_subjectivity, color="Winner"), color = "#EE3838") + 
  geom_line(aes(y = losers_subjectivity, color="Loser"), color="4B5973") +
  geom_point(aes(color="Winner")) + 
  geom_point(aes(color="Loser")) + 
  scale_color_manual(values = c("#EE3838", "#4B5973"),name="Outcome", labels = c('Winner', 'Loser')) +
  labs(title="Subjectivity for Each Candidate") +
  xlab("Year") +
  ylab("Subjectivity") +
  theme(legend.position="bottom") + 
  labs(subtitle = "1956 - 2016") + 
  theme_hodp() 
f
