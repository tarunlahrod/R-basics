# R_day2
# R lecture 2

m <- matrix(c(3:14), nrow = 4)	# assigns data values column-wise
print(m)

m <- matrix(c(3:14), nrow = 4, byrow = TRUE)	# assigns data values row-wise
print(m)

r = c("row1", "row2", "row3", "row4")	# row vector
c = c("col1", "col2", "col3")	# column vector
m <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(r,c))
print(m)
print(m[1,3])
print(m[,1]) # prints the complete 1st column
print(m[1,])	#prints the complete 1st row


# Matrix computation
m1 <- matrix(c(3,7,-5,8,2,9), nrow = 2)
print(m1)
m2 <- matrix(c(8,0,2,4,2,7), nrow = 2)
print(m2)

# sum
t <- m1 + m2
print(t)

# differnce
t <- m1 - m2
print(t)

# multiplication (element wise)
t <- m1 * m2
print(t)

# division
t <- m1 / m2
print(t)

# Arrays
v1 <- c(1,2,3)
v2 <- c(9,8,7,6,5,4)
a <- array(c(v1, v2), dim = c(3,3,2))
print(a)

# assigning names to rows and colums of the two arrays
r <- c("row1", "row2", "row3")
c <- c("col1", "col2", "col3")
n <- c("Matrix1", "Matrix2")
a <- array(c(v1,v2), dim = c(3,3,2), dimnames  = list(r, c, n))
print(a)


# pick a particular row of a column from these matrices
print(a[1,2,2])
print(a[1, , 2])


# Array to matrix conversion
x <- a[,,1]
print(x)

y <- a[,,2]


# Apply function - for array calculation
r <- apply(a, c(2), sum)
print(r)

# vector and factor
d <- c("East", "West", "East", "North", "East", "West")
print(d)

print(is.factor(d))
fd <- factor(d)
print(is.factor(fd))


# Data frame
height <- c(132, 151, 162, 139, 166, 147, 122)
weight <- c(48, 49, 66, 53, 67, 52, 40)
gender <- c("male", "male", "female", "female", "male", "female", "male")
t <- data.frame(height, weight)
t <- data.frame(height, weight, gender)
print(t)

print(t$gender) # whenever we make a dataframe, the vector is implicitly converted to factor
print(is.factor(t$gender))
print(is.factor(t$height))	# numeric values are never converted to factor
print(is.factor(t$weight))


# another data frame.

emp.data <- data.frame(
	emp_id = c(1:5),
	emp_name = c("Chhota Bheem", "Raju", "Chhutki", "Kaalia", "Jaggu Bandar"),
	salary = c(623.3, 515.2, 611.0, 729.0, 843.25),
	start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")), 
	stringsAsFactors = FALSE
	)
print(emp.data)
print(summary(emp.data))
r <- data.frame(emp.data$emp_name, emp.data$salary)
print(r)
# print(emp.data[1:2],)		#buggy
print(emp.data[c(3,5), c(2, 4)])
emp.data$dept <- c("IT","Operations", "IT", "HR", "Finance")
print(emp.data)
# result <-		#some code left out


# To combine two databases

?rbind
.libPaths()
search()

# to install package
# install.packages("XML")		# uncomment to install XML package

# get working directory
getwd()

#set working directory
setwd("/home/tarun/Desktop")
getwd()
d = read.csv("data.csv")
print(d)
print(is.data.frame(d))
 
# operations on data.csv

print(ncol(d))
print(nrow(d))
sal <- max(d$salary)
print(sal)

# print all details of a particular
e <- subset(d, salary == max(salary))
print(e)

# to extract the data of IT dept only
print(subset(d, dept == "IT"))

# find those who are from IT dept and has a pay higher than 600
print(subset(d, dept == "IT" & salary > 600))

# find those having joining date(start) before 2014-01-01
print(subset(d, as.Date(start) < as.Date("01/01/2014")))

print(subset(d, dept == "IT"))

# Writing into a csv file
x <- subset(d, dept == "IT")
write.csv(x, "output.csv")		# this will add a new column in beginning for index, to remove it use this...
write.csv(x, "output without index.csv", row.names = FALSE)

# Installing and importing packages
install.packages("xlsx")
library("xlsx")

install.packages("rjson")
library("rjson")

install.packages("RMySQL")
library("RMySQL")