library(tidyverse)

# **One-dimensional plot (histogram)**

# Generic R hist() function for histograms
schools_data <- read.csv("https://github.com/HeardLibrary/digital-scholarship/raw/master/data/gis/wg/Metro_Nashville_Schools.csv")
hist(schools_data$Female)

# Create a histogram using ggplot
ggplot(data = schools_data) + geom_histogram(mapping = aes(x = Female), binwidth = 100)

# Assigning one of the functions to a variable
base_plot <- ggplot(data = schools_data)
base_plot + geom_histogram(mapping = aes(x = Female), binwidth = 100)

# For multiline, must have a trailing + sign.
ggplot(data = schools_data) +
  geom_histogram(mapping = aes(x = Female), binwidth = 100)
