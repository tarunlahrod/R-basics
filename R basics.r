# REFERENCE NOTES

# declaring a vector
apple <- c('red', 'green', 'yellow')
print (apple)

# declaring a list
list1 <- list(c(3, 5, 7), 21.1)
print(list1)

# Matrices
m = matrix(c('a', 'a', 'c', 'b', 'a', 'a'), nrow = 2, ncol = 3)
print(m)

# Array
a <- array(c('green', 'yellow', 'gulaabo'), dim = c(3,3,2))
print(a)

#creating a factor
lang <- c('eng', 'hin', 'eng', 'eng', 'deu', 'esp', 'deu', 'eng')
factor_lang <- factor(lang)
print(factor_lang)
Output:
[1] eng hin eng eng deu esp deu eng
Levels: deu eng esp hin

# Data frame
BMI <- data.frame(
	gender = c("male", "female", "male"), 
	height = c(152, 171.2, 165), 
	weight = c(81, 93, 78), 
	age = c(42, 38, 26)
)

# ls and pattern matching
print(ls(pattern = 'a'))
# to list all the hidden elements
print(ls(all.name = TRUE))

# removing an element from environment
rm(<element name>)
# to remove all the elements
rm(list = ls())
print(ls())

# Operations on a vector
x <- c(1.5, 3.9)
y <- c(9.2, 4)
print(x+y)


x <- c(1.5, 3.9)
y <- c(9.2, 4)

# Arithematic
print(x+y)
print(x-y)
print(x*y)
print(x**y)
print(x/y)
print(x%%y)

# Relational
print(x < y)
print(x > y)
print(x != y)

# Logical
print(x&y)
x <- c(0, 3.9)
print(x&y)	# single & operates on all elements columnwise
print(x == y)
print(x && y)	# double && operates only on the first elements columnwise
print(x || y) 
print(x & y)
print(x | y)


# colon operator
v <- 2:20
print(v)
print ( 5 %in% v)


# if else 
x <- 30L
if(is.integer(x)) {
    print("x is an integer")
}


x <- c("what", "is", "truth")
if("Truth" %in% x) {
    print("Truth is found")
} else {
    print("Truth is not found")
}


x <- switch(
	3,
	"first",
	"second",
	"third",
	"fourth"
)
print(x)


# Loops

#repeat
v <- c("hello", "world")
c <- 1
repeat {
	print(v)
	c <- c+1
	if(c>5){
		break
	}
}

# while
v <- c("hello", "world")
c <- 1
while(c < 10) { 
	print(v)
	c = c + 1
}

# for each loop
v <- letters[1:10]
print(v)
for (i in v) {
	print(i)
}

# next (it is same as continue in C/C++)
v <- LETTERS[1:6]
print(v)
for (i in v) {
	if(i == "D") {
		next		# D will be skipped
	}
	print(i)
}


# functions in R

# Built-in (predefined)
# eg. seq()
print(seq(10, 15))

# user defined functions
## syntax: 
function_name <- function(arg_1, arg_2) {

}

# defining a function
x <- function(a) {
	for(i in 1:a) {
		b <- i^2
		print(b)
	}
}
x(5)

# default arguments
#create a funciton with arguments
new.function <- function(a = 3, b = 6) {
	result <- a*b
	print(result)
}

# call the function without giving any argument
new.function()

# call the funtion with giving new values of the argumnet
new.function(9, 5)


# paste funciton
a <- "Hello"
b <- "how"
c <- "are you?"
print(paste(a, b, c))

print(paste(a, b, c, sep = "-"))

# format function 
result <- format(23.123456789, digits = 9)
print(result)

result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

result <- format(13.7, width = 6)
print(result)

result <- format("Hello", width  = 8, justify = "l")
print(result)

result <- format("Hello", width  = 8, justify = "c")
print(result)

result <- nchar("Count the number of characters")
print(result)

result <- toupper("Count the number of characters")
print(result)

result <- tolower("Count the number of characters")
print(result)

# extract characters from 5th to 7th postions.
result <- substring("extract", 5, 7)
print(result)

# vector
v <- 5:10
print(v)

v <-c(5,6,7,8,9,10)
print(v)

v <- 6.6:12.6
print(v)

v <- 6.6:12.1
print(v)

print(seq(5, 9, by 0.3))

t <- c("Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat")
u <- t[c(2,3,6)]
print(u)

# sort
v <- c(5,9,8,72,3,4,2,3)
u <- sort(v)
print(u)

u <- sort(v, decreasing = TRUE)
print(u)

# Lists

list_data = list( c("jan", "feb", "mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green", 12.3))
names(list_data) <- c("1st Quater", "A_Matrix", "A Inner list")
print(list_data[1])
print(list_data[2])
print(list_data[3])

# appending another element in a list
list_data[4] <- "Test Element"
print(list_data)


# list to vector conversion
#Create lists
list1 <- list(1:5)
print(list1)

list2 <- list(10:14)
print(list2)

# using unlist function for list to vector conversion
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

print(list1 + list2)	# gives error, lists in R are immutable
print(v1+v2)

# MATRIX
M <- matrix(c(3:14), nrow = 4, byrow = TRUE) # byrow = enter elements row-wise
print(M)