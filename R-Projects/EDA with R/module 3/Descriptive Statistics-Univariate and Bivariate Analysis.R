# set working directory
setwd("~/GitHub/Data-Science-Projects/R-Projects/EDA with R/module 3")

# load data
movies <- read.csv("Movies.csv")
genres <- read.csv("Genres.csv")

head(movies)
head(genres)

# univariate statistics for qualitative variables
table(movies$Rating)
table(genres$Genre)

# univariate statistics for quantitative variables
# analyze the location of a quantitative variable
mean(movies$Runtime)
median(movies$Runtime)

which.max(table(movies$Runtime))

# analyze the spread of a quantitative variable
min(movies$Runtime)
max(movies$Runtime)

range(movies$Runtime)

diff(range(movies$Runtime))

quantile(movies$Runtime)
quantile(movies$Runtime, 0.25)
quantile(movies$Runtime, 0.90)

IQR(movies$Runtime)

var(movies$Runtime)

sd(movies$Runtime)

# analyze the shape of a quantitative variable
# load the moments package for skewness and kurtosis
# install.packages("moments")
library(moments)

skewness(movies$Runtime)
kurtosis(movies$Runtime)

plot(density(movies$Runtime))

# summarize quantitative variable
summary(movies$Runtime)

# bivariate statistics for two qualitative variables
table(genres$Genre, genres$Rating)

# bivariate statistics for two quantitative variables

#covariance
cov(movies$Runtime, movies$Box.Office)
cov(movies$Critic.Score, movies$Box.Office)

# correlation coefficients
cor(movies$Runtime, movies$Box.Office)
cor(movies$Critic.Score, movies$Box.Office)

# bivariate statistics for both a qualitative and quantitative variable
tapply(movies$Box.Office, movies$Rating, mean)
tapply(genres$Box.Office, genres$Genre, mean)

# summarize entire table
summary(movies)
