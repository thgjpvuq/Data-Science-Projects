setwd("~/GitHub/Data-Science-Projects/R-Projects/EDA with R/module 3")

# load csv data
movies <- read.csv(
  file = "Movies.csv",
  quote = "\"")

genres <- read.csv(
  file = "Genres.csv",
  quote = "\"")

head(movies)
head(genres)

# univariate visualizations for qualitative variable

# convert rating to factor
movies$Rating <- as.factor(movies$Rating)

# create bar graph of rating observations
plot(movies$Rating, col="orange")

# create a pie chart of rating observations
pie(table(movies$Rating))

# univariate visualizations of a quantitative variable

# create a dot plot of runtime
plot(
  x = movies$Runtime,
  y = rep(0, nrow(movies)),
  ylab = "",
  yaxt = "n")

# create boxplot of runtime
boxplot(
  x = movies$Runtime,
  xlab = "Runtime (minutes)",
  horizontal = TRUE)

# create a histogram of runtime
hist(movies$Runtime)

# create a more course-grain histogram
hist(
  x = movies$Runtime,
  breaks = 30)

# create a density plot of runtime
plot(density(movies$Runtime))

# add dot plot to base of density plot
points(
  x = movies$Runtime,
  y = rep(-0.0005, nrow(movies)))

