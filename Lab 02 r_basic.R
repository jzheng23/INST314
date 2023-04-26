#basic
1 + 1
x <- 13
y <- x ^2
plot(y)

#file & folder
getwd()
ab_data <- read.csv('C:/Users/Jian/Downloads/absenteeism.csv')
View(ab_data)
setwd('C:/Users/Jian/Downloads')
ab_data1 <-  read.csv('absenteeism.csv')

#more about reading files
install.packages('readr')
library(readr)
ab_data2 <-  read_csv('absenteeism.csv')
ab_data1
ab_data2
typeof(ab_data1)
typeof(ab_data2)
class(ab_data1)
class(ab_data2)

#\ & /
ab_data3 <-  read_csv('C:\Users\Jian\Documents\Book\absenteeism.csv')
ab_data3 <-  read_csv('C:/Users/Jian/Documents/Book/absenteeism.csv')

#r markdown
plot(ab_data$days)
knitr::opts_chunk$set(echo = TRUE)
summary(cars)
plot(pressure)
knitr::opts_chunk$set(echo = TRUE)
summary(cars)
plot(pressure)
plot(log(pressure))
install.packages('openintro')
library(openintro)
