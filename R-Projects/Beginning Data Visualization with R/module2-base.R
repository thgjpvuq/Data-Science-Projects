# create a data frame
df <- data.frame(
  Name = c("a", "b", "c"),
  Value = c(1, 2, 3))

print(df)

# plot data frame using default parameters
df$Name <- as.factor(df$Name)
plot(df)

# plot using default parameter order
plot(df$Name, df$Value)

# plot using named parameter
plot(
  x = df$Name,
  y = df$Value)

# create bar chart
barplot(
  names = df$Name,
  height = df$Value,
  col = "skyblue",
  main = 'Hello World',
  xlab = 'Name',
  ylab = 'Value')

?plot
?barplot
