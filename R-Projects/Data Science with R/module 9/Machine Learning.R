# load data set
data(iris)
head(iris)

# set a seed for randomness
set.seed(42)

# randomly sample 100 rows
indexes <- sample(
  x = 1:150,
  size = 100)

# inspect indexes
print(indexes)

# create a training set
train <- iris[indexes, ]

# create a test set
test <- iris[-indexes, ]

# load decision tree package
# install.packages("tree")
library(tree)

# train decision tree model
model <- tree(
  formula = Species ~ .,
  data = train)

# inspect the model
summary(model)

# visualize the decision tree model
plot(model)
text(model)

# load color brewer
# install.packages("RColorBrewer")
library(RColorBrewer)

# create color palette
palette <- brewer.pal(3, "Set2")

# create scatterplot colored by species
plot(
  x = iris$Sepal.Length,
  y = iris$Sepal.Width,
  pch = 19,
  col = palette[as.numeric(iris$Species)],
  main = "Iris Petal Length vs. Width",
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)")

# plot decision boundaries
partition.tree(
  tree = model,
  label = "Species",
  add = TRUE)

# predict with model
predictions <- predict(
  object = model,
  newdata = test,
  type = "class")

# create confusion matrix
table(
  x = predictions,
  y = test$Species)

# load caret package
# install.packages("caret")
library(caret)

# evaluate the prediction results
confusionMatrix(
  data = predictions,
  reference = test$Species)

# set working directory

# save the tree model
save(model, file = "Tree.RData")
