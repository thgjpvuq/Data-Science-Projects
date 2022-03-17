# load data set
data(iris)
head(iris)

# load ff package
install.packages("ff")
library(ff)

# read csv file as ff data frame
irisff <- read.table.ffdf(
  file = "Iris.csv",
  FUN = "read.csv"
)

# inspect the class
class(irisff)

# inspect the columns
names(irisff)

# inspect first few rows
irisff[1:5,]

# load biglm package
install.packages("biglm")
library(biglm)

# create linear regression model
model <- biglm(
  formula = Petal.Width ~ Petal.Length,
  data = irisff
)

# summarize model
summary(model)

# create scatterplot
plot(
  x = irisff$Petal.Length[],
  y = irisff$Petal.Width[],
  main = "Iris Petal Length vs. Width",
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)"
)

# get y-intercept from model
b <- summary(model)$mat[1,1]

# get slope from model
m <- summary(model)$mat[2,1]

# draw regression line
lines(
  x = irisff$Petal.Length[],
  y = m * irisff$Petal.Length[] + b,
  col = "red",
  lwd = 3
)

# predict new values with the model
predict(
  object = model,
  newdata = data.frame(
    Petal.Length = c(2, 5, 7),
    Petal.Width = c(0, 0, 0))
)
