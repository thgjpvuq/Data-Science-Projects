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