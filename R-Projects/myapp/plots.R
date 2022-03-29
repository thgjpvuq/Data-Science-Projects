data("iris")
iris

iris <- data.frame(iris)
head(iris)

hist(
  x = iris$Sepal.Length,
  main = "Sepal.Length",
  xlab = "cm")

hist(
  x = iris$Sepal.Width,
  main = "Sepal.Length",
  xlab = "cm")

hist(
  x = iris$Petal.Length,
  main = "Sepal.Length",
  xlab = "cm")
