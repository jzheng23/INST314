
###########################################################
###########################################################

## Getting Started with R

###########################################################
###########################################################

###########################################################
## Task One: R Overview & Preliminaries
## In this task, you will learn about the R programming
## language and write basic R commands.
###########################################################

### Basic R Commands

### 1.1: Assignments in R

## Assign x to 1, y to 2 and z to 3

x <- 1
y <- 2
z <- 3
### 1.2: Functions

## Print Hello World

print('hello world')
### 1.3: Computations

## Add 17 to 5

17 + 5
## Add 5 to x
 x + 5

## Add 15 to 5 and store it in a variable called y
 y <- 15 + 5

## Find the square root of 16 and store it in a variable called y
      #Square root function

## Find the square root of 16
 y = sqrt(16)

## Calling variable in R

# Call y, see y value in console
y
# Call x, see x value in console

x

###########################################################
## Task Two: Basic Data Types in R 
## In this task, you will understand the different data types
## in R, and how they are used in R.
###########################################################

### 2.1: Variable Assignment

## Set the variable x to 6 (Numeric Type)
## This is the default. 

x <- 6

## Set the variable z to "Hello" (Character Type)
 z <- 'Hello'

## Note: R is case sensitive: The variables 'z' and 'Z' can coexist
## in R environment and have different values.

# Set Z to "World"

Z <- 'World'
### 2.2: Call Variables

# Call small z

z
# Call capital Z
Z

### 2.3: Adding Object Together

z + Z

## 2.4: What do you think will be the result of this?

#non-numeric argument to binary operator

### Data Types

### Numeric

## 2.5: Check the data type of the variable a

a <- 0
typeof(a)
## 2.6: Set a variable num to 8.5

num <- 8.5
## Call the variable num
num
## This is used to check the data type of a variable
typeof(num)
### Integers

## 2.7: Change numeric data type to integer

int <- as.integer(num)
## Check the data type of the variable int
typeof(int)
### Character

# Check the data type of the variable w
typeof(x)
## 2.8: Create a character variable from a numeric variable
char <- as.character(8)
## Call the char variable

char

### Boolean/Logical

## 2.9: Create a logical variable and set it as TRUE
log <- TRUE

## Check the data type of log variable

typeof(log)
### Factors

## 2.10: Store movie ratings in a variable called fac

movie_data <- data.frame(
  Movie_Title = c("Movie A", "Movie B", "Movie C", "Movie D", "Movie E", "Movie F", "Movie G", "Movie H", "Movie I", "Movie J"),
  User_Rating = c("Good", "Bad", "So-so", "Good", "Bad", "Good", "So-so", "Bad", "Good", "So-so")
)

fac <- as.factor(movie_data$User_Rating)

## Check the data type

## 2.11: Check how many levels and the data type of the levels
levels(fac)

typeof(fac)
class(fac)
## 2.12: Check all variables and objects that have been defined

ls()

###########################################################
## Task Three: Data Structures in R: Vectors
## In this task, you will understand vectors as a data structure
## in R, and how to perform sub-setting on the vector created.
###########################################################

### VECTORS

## 3.1: Create a vector of the marks of 4 students

student_marks <- c(85, 92, 78, 88)
## 3.2: Check the data type of the vector
typeof(student_marks)
class(student_marks)
## 3.3: Check the length of the variable

length(student_marks)
## 3.4: Indexing and Slicing
## Returns the 4th mark
student_marks[4]
## Returns the 2nd, 3rd and 4th marks
student_marks[2:4]
## (Ex.) What do you think the result will be?


## 3.5: Create a character vector

char_vector <- c("Apple", "Banana", "Cherry", "Date")


## 3.6 (Ex.): Check the data type and length of the vector

typeof(char_vector)
length(char_vector)
## 3.7 (Ex.): Retrieve the 1st, 2nd and 3rd characters in the char_vec vector

char_vector[c(1,2,3)]
## 3.8: Create the variable char_num_vec to take numeric and character types
char_num_vec <- list(42, "Hello", 3.14, "World")

## 3.9 (Ex.) : What do you think will be the data type of the vector?

typeof(char_num_vec)
class(char_num_vec)
## 3.10: Create a vector of odd numbers

odd_numbers <- seq(from = 1, to = 10, by = 2)

###########################################################
## Task Four: Data Structures in R: Matrices
## In this task, you will understand matrices as a data structure
## in R, and how to perform sub-setting on the matrix created by
## accessing rows and columns of the matrix
###########################################################

### MATRICES

# 4.1: Create matrix with values from marks, 2 rows and 2 columns

# Create a 2x2 matrix with values from the student_marks vector
marks_matrix <- matrix(student_marks[1:4], nrow = 2, ncol = 2, byrow = FALSE)

# Call the matrix created

marks_matrix
## 4.2: Change byrow to TRUE

marks_matrix <- matrix(student_marks[1:4], nrow = 2, ncol = 2, byrow = TRUE)
# Call the matrix created

marks_matrix
# 4.3: Create vector with 9 integers from 1 to 9
marks_matrix <- matrix(seq(9), nrow = 3, ncol = 3, byrow = TRUE)

marks_matrix

# 4.4: Access value on second row, second column

marks_matrix[2,2]
# 4.5: Access second row

marks_matrix[2,]

# 4.6: Access second column
marks_matrix[,2]

# 4.7: Access sub-matrix with components on both 
# first 2 rows and first 2 columns
marks_matrix[1:2,1:2]

# 4.8: Access sub-matrix with components that are 
# not on 3rd row and 3rd column
marks_matrix[3,3]


###########################################################
## Task Five: Data Structures in R: Data frames
## In this task, you will understand data frames as a data structure
## in R, and how to access specific rows and columns of a data frame.
###########################################################

### DATA FRAMES

## 5.1: Create data frame with 2 columns: marks and char_vec
df <- data.frame(student_marks, char_vector)

df
## Look at data frame's overall type
typeof(df)
class(df)
## 5.2: Check the structure of each variable/feature in the data frame

str(df)
str(df$student_marks)
str(df$char_vector)
# 5.3: Look at columns' data types
typeof(df$student_marks)
typeof(df$char_vector)
# 5.4: Call a column in a data frame
df$student_marks


# 5.5: Create sub data frame with first 3 rows only
df1 <- df[1:3,]
df1
## 5.6: Create a new data frame with 3 rows and explore it

str(df1)

## Call the data frame 

df1
## Check the data type 

typeof(df1)

## 5.7: Create another data frame with 2 rows

df2 <- df[1:2,]

## 5.8: Use rbind and cbind to append new data to an existing dataset

## rbind - A row bind appends new values in row fashion

df3 <- rbind(df1, df2)
## Create two new columns; Gender and LastName

gender <- c("M","F","M","M","F")
last_name <- c("Smith", "Johnson", "Lee", "Davis", "Garcia")

## cbind - A column bind appends new values in column fashion

df4 <- cbind(df3,gender, last_name)

## Check the dataframe and its structure

df4
str(df4)

###########################################################
## Task Six: Data Structures in R: Lists
## In this task, you will understand list as a data structure
## in R, and how to perform sub-setting on the list created.
###########################################################

### LISTS

# 6.1: Create a list with 4 objects

my_list <- list(
  Object1 = "Apple",
  Object2 = 42,
  Object3 = c(1.5, 2.5, 3.5),
  Object4 = TRUE
)
# 6.2: Accessing each object in the list

for (i in 1:length(my_list)) {
  print(my_list[[i]])
}

# Access the first and second objects

my_list[c(1,2)]
my_list[1:2]
# (Ex.): Access the third and fourth objects


my_list[3:4]
# 6.3: Call First row of 3rd list's objects.


my_list[[3]][1]

###########################################################
## Task Seven: Installing Packages in R
## In this task, you will learn how to install packages in R
## using the R studio console and the install.packages function.
## In addition, you will learn how to set the right working
## directory in R.
###########################################################

### Importing Packages

# 7.1: Install package on computer (from CRAN repository)


# load package in R session


# 7.2: Install readxl package to machine
## install.packages("readxl")
install.packages("readxl")
library(readxl)
## Load in Rsession to use read_excel() fucntion

read_excel('')

### WORKING DIRECTORY

# 7.3: Set working directory (tells R where to import files from/export files to)


# Get working directory

getwd()

###########################################################
## Task Eight: Importing Datasets into R
## In this task, you will learn how to import different datasets
## into R
###########################################################

### 8.1: Import .Txt with space separated values and explore it

# read.table() function to import .txt files

data_airplane <- read.csv('Downloads/airplane.csv')

## See all data


## See first 5 rows
head(data_airplane)

## See last rows

tail(data_airplane)
## Check the structure of the data 

str(data_airplane)
## Check the summary of the data
summary(data_airplane)

## Change column's type to character
## Sales column is overwritten by 
## "character" version of Sales column


## Change column's type to factor


### 8.2: Import .txt with comma separated values

# read.table() function to import .txt files
# I will add a sep= "," for comma separated files



## Check the summary of the data


## Check the structure of the data


## (Ex.): Change the Tree feature to factor



### 8.3: Import .csv file

# load readr for read_csv() function


#  Use read.csv() to import .csv files and explore it



## (Ex.) Check the data type


## (Ex.) Retrieve the first 5 rows


## (Ex.) Check the number of rows and columns


## (Ex.) Check the structure of the data


## (Ex.) Check the summary of the data 


### 8.4: Import excel document

## Use read_excel() to import xlsx documents


## Note: We can also use Rstudio interface

## Check the data type


# Make the data a proper data frame object
norm_sample <- rnorm(1000)
x_grid <- seq(min(norm_sample),max(norm_sample),length.out = 100)
y_value <- dnorm(x_grid,mean(norm_sample), sd(norm_sample))
library(ggplot2)
ggplot(NULL) + geom_line(aes(x = x_grid, y = y_value))
