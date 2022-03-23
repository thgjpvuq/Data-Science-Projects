housing <- read.csv("housing.csv")

# install.packages("tidyverse")
# install.packages("reshape2")
library(tidyverse)
library(reshape2)
library(ggplot2)

head(housing)
summary(housing)

# set graphical parameters for plotting
par(mfrow=c(2,5))

# check column names
colnames(housing)

# plot data to check for irregularities
ggplot(data = melt(housing), mapping = aes(x = value)) + 
  geom_histogram(bins = 30) + facet_wrap(~variable, scales = "free_x")

# median_house_value shows a spike in values at 500,000. This suggests
# that values above 500,000 were combined into this category.

# impute missing values
housing$total_bedrooms[is.na(housing$total_bedrooms)] = 
  median(housing$total_bedrooms, na.rm = TRUE)

housing$mean_bedrooms = housing$total_bedrooms/housing$households

housing$mean_rooms = housing$total_rooms/housing$households

drops = c('total_bedrooms', 'total_rooms')

housing = housing[ , !(names(housing) %in% drops)]

head(housing)
