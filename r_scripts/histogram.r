library(tidyverse)

# **One-dimensional plot (histogram)**

# Generic R hist() function for histograms
schools_data <- read.csv("https://github.com/HeardLibrary/digital-scholarship/raw/master/data/gis/wg/Metro_Nashville_Schools.csv")
hist(schools_data$Female)

# Create a histogram using ggplot
ggplot(data = schools_data) + geom_histogram(mapping = aes(x = Female), binwidth = 100, fill="green", color="black")

