## ----global_options, results="hide"--------------------------------------

#Note: This is a coding cell.
#The above cell, with the text, is a Markdown cell.

#any text following a hash (#) is a comment
#comments should render in green on your screen
#this text is for human readers: the computer ignores these lines

#To run code in this cell click the >|RUN button at the top
#or press CTL-Enter

#first line of code: assign an object, using <-
out <- 10

#find out the object type
class(out)

#objects can be numerical, and also character
mystring <- "Hello, world"
class(mystring)


## ---- results="hide"-----------------------------------------------------
5 + 200

#assign it to an object
mysum <- 5 + 200
mysum

class(mysum)

# other operators
5 * 200
200 / 5

mydiv = 200 / 5

#we can use operators on two objects!
mysum * mydiv



## ---- results="hide"-----------------------------------------------------
4 < 5
mybool <- 4<5
mybool
class(mybool)

#Equivalence (note the double equal)
4==7


## ---- results="hide"-----------------------------------------------------
myvector <- c(1, 3, 5, 7)
class(myvector)

#Check if it's a vector (this type of vector is called an atomic vector)
is.atomic(myvector)


## ---- results="hide"-----------------------------------------------------
length(myvector)
max(myvector)
min(myvector)

#assign the returned value to a new object
myvector_len <- length(myvector)
myvector_len

class(myvector_len)


## ---- results="hide"-----------------------------------------------------
#Exercise 1:
#In this box, creat a new vector with even numbers between 0 and 10.
# What is the mean and median of that vector? 
#(I didn't teach you mean and median, 
#but try to intuit it from the functions we did learn.)




## ---- results="hide"-----------------------------------------------------
df <- read.csv(file = "data/inequality_data_1976.csv", header=TRUE, sep=",")
df


## ---- results="hide"-----------------------------------------------------
class(df)


## ---- results="hide"-----------------------------------------------------
#Check the attributes
attributes(df)

#extract the names attribute, which corresponds to the columns 
# (or variables) of our data frame
names(df)


## ---- results="hide"-----------------------------------------------------
#slice the age column
df$age

#what object type is it?
class(df$age)

#We can do the same functions on it as we need to our vector above
mean(df$age)
median(df$age)
max(df$age)
min(df$age)


## ---- results="hide"-----------------------------------------------------
#Exercise 2:
# Find the mean, median, max, and min of a different variable in the data frame.


## ---- results="hide"-----------------------------------------------------
summary(df)
summary(df$age)


## ---- results="hide"-----------------------------------------------------
#We can also pull out specific percentiles, using the quantile() function
#and passing in the percentile we want
quantile(df$age, c(.10))
quantile(df$age, c(.90))

#Reminder: We can assign these to new objects!
age_10 <- quantile(df$age, c(.10))
age_90 <- quantile(df$age, c(.90))

age_10
age_90




## ---- results="hide"-----------------------------------------------------
#Exercise 3 (this one's a challenge!)
# Calculate the 90:10 ratio from the age column.
# If you have time, do the same for a different column.


## ---- results="hide"-----------------------------------------------------
#raw frequencies
table(df$sex)
table(df$empstat)

#we can combine to do cross tabluations
table(df$empstat, df$sex)

#proportional frequences
prop.table(table(df$sex))
prop.table(table(df$empstat))

#combined
prop.table(table(df$empstat, df$sex))


## ---- results="hide"-----------------------------------------------------
#Exercise 4:
# Produce a normalized frequency table for two columns of your choice.
# Reminder: what type of columns can be used in frequency and normalized frequency tables?


## ---- results="hide"-----------------------------------------------------
#remind ourselves of our data.frame
df

#remind ourselves of the values in the empstat column
summary(df$empstat)



## ---- results="hide"-----------------------------------------------------

#check if value is equivalent to 'At work'
df$empstat == 'At work'

#can use Boolean logic for this as well (& = AND, | = OR)

(df$empstat == 'At work') & (df$sex == 'Female')



## ---- results="hide"-----------------------------------------------------
#create a new variable (or column) based on the equivalency operator

df$working <- ifelse(df$empstat=='At work', 1, 0)
df$working


## ---- results="hide"-----------------------------------------------------
prop.table(table(df$working, df$sex))


## ---- results="hide"-----------------------------------------------------
prop.table(table(ifelse(df$empstat=='At work', 1, 0), df$sex))

#our values do not have to be numeric
prop.table(table(ifelse(df$empstat=='At work', "Working", "Not working"), df$sex))


## ---- results="hide", eval=FALSE-----------------------------------------
## #histogram of hhincome variable
## hist(df$hhincome)


## ---- results="hide", eval=FALSE-----------------------------------------
## #box and whiskers plot from hhincome variable
## boxplot(df$hhincome)


## ---- results="hide", eval=FALSE-----------------------------------------
## options(repr.plot.width=5, repr.plot.height=6)
## boxplot(df$hhincome)

