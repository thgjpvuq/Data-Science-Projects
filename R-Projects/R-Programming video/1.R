print(class(4))
print(class(4L))
print(class(T))
print(class(1 + 4i))
print(class("Sample"))
print(class(charToRaw("Sample")))

is.integer(2)
as.integer(1)

sprintf("4 + 5 = %d", 4 + 5)

numbers = c(3,2,0,1,8)
numbers

numbers[1]
length(numbers)

numbers[length(numbers)]
numbers[-1]
numbers[c(1,2)]
numbers[2:3]
numbers[c(4,5)] = 2
numbers

sort(numbers, decreasing=T)
sort(numbers)


oneToTen = 1:10

add3 = seq(from=3, to=27, by=3)
add3

even = seq(from=2, by=2, length.out = 10)
even

sprintf("4 in evens %s", 4 %in% even)

rep(x=2, times=5, each=2)

rep(x=c(1,2,3), times=2, each=2)

sprintf("4 == 5 : %s", 4 == 5)

oneTo20 = c(1:20)
isEven = oneTo20 %% 2 == 0
isEven

justEven = oneTo20[oneTo20 %% 2 == 0]
justEven

cat("TRUE && FALSE = ", T && F, "\n")

grade = "C"
switch(grade,
       "A" = print("great"),
       "B" = print("good"),
       "C" = print("okay"),
       print("none"))

str1 = "string"
nchar(str1)

sprintf("Dog > Egg : %s", "Dog" > "Egg")

str2 = paste("Owl", "Bear", sep="")
str2

substr(x=str2, start=4, stop=7)

sub(pattern = "Owl", replacement = "Hawk", x=str2)

fsub(pattern="Egg", replacement="Chicken")

strVect = strsplit("A dog", " ")
strVect

# Factors
direction = c("up", "left", "right", "down", "up")
factorDir = factor(direction)
is.factor(factorDir)
factorDir
levels(x=factorDir)

dow = c("monday", "tuesday", "wednesday", "thursday")
wdays = c("tuesday", "thursday")
wdFact = factor(x=wdays, levels=dow, ordered=T)
wdFact

# Dataframes
custData = data.frame(name=c("tom", "sally", "sue"),
                      age=c(43,32,21),
                      stringsAsFactors = F)
custData
custData[1:3,2]

dim(custData)
recordMark = data.frame(name="mark", age=33)
custData = rbind(custData, recordMark)
custData

debt = c(0, 25, 36, 48)
custData = cbind(custData, debt)
custData

owesMoney = custData[custData$debt > 0,]
owesMoney

# Looping
num = 1
repeat{
  print(num)
  num=num + 1
  if(num > 5){
    break
  }
}

num = 5
while(num > 0){
  num = num -1
  if(num %% 2 == 0){
    next
  }
  print(num)
}

oneTo5 = 1:5
for(i in oneTo5){
  print(i)
}

# Matrix
matrix1 = matrix(data=c(1,2,3,4))
matrix1

matrix2 = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
matrix2

matrix3 = matrix(data=c(1,2,3,4), nrow=2, ncol=2, byrow=T)
matrix3

dim(matrix3)

matrix3[1,2]
matrix3[1,]

matrix4 = rbind(1:3, 4:6, 7:9)
matrix4

matrix4[1,1] = 0
matrix4