#load data
movies <- read.table(
  file = "Movies.txt",
  sep = "\t",
  header = TRUE,
  quote = "\"")

head(movies)

# look at column names
names(movies)

# problem 1: column name is incorrect
names(movies)[5]

# rename variable
names(movies)[5] <- "Critic.Score"

names(movies)

# problem 2: missing values
# count missing values
sum(is.na(movies))

# inspect rows with missing values
tail(movies)

# exclude observations with missing values
movies <- na.omit(movies)

tail(movies)

# problem 3: units in runtime column
# peek at movie runtime data
head(movies$Runtime)

# error
mean(movies$Runtime)

# determine data type
class(movies$Runtime)

# cast to string
# this class was previously of the type factor and the following step may be skipped
# runtimes <- as.character(movies$Runtime)
head(runtimes)
class(runtimes)

# eliminate unit of measure
runtimes <- sub(" min", "", runtimes)
head(runtimes)

# cast character string to integer
movies$Runtime <- as.integer(runtimes)
head(movies$Runtime)
class(movies$Runtime)

# perform mathematical operations
mean(movies$Runtime)

# problem 4: box office uses 3 units of measure
head(movies$Box.Office)

# create function to convert box office revenue
convertBoxOffice <- function(boxOffice)
{
  stringBoxOffice <- as.character(boxOffice)
  
  replacedBoxOffice <- gsub("[$|k|M]", "", stringBoxOffice)
  
  numericBoxOffice <- as.numeric(replacedBoxOffice)
  
  if (grepl("M", boxOffice)) {
    numericBoxOffice
  } else if (grepl("k", boxOffice)){
    numericBoxOffice * 0.001
  } else {
    numericBoxOffice * 0.000001
  }
}

# convert box office to single unit of measure (millions)
movies$Box.Office <- sapply(movies$Box.Office, convertBoxOffice)

head(movies$Box.Office)
class(movies$Box.Office)
mean(movies$Box.Office)

# save to CSV
write.csv(movies, "Movies.csv")
