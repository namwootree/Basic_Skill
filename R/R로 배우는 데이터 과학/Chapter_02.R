# Chapter 02

## Check Data Set
cars # 자동차의 속도와 제동거리 데이터
str(cars)

## Simple Visualization Data Set
plot(women)
plot(cars)
plot(cars, col='blue')
plot(cars, col='blue', xlab='speed', ylab='distance')
plot(cars, # data
     col='blue', # color
     xlab='speed', # X Stick
     ylab='distance', # Y Stick
     pch=18) # symbol

## Set working directory
getwd() # print working directory
setwd('/Users/namwoo/Desktop/R') # Set working directory
getwd()

## Use Library
install.packages('dplyr') # Install Library
install.packages('ggplot2')

library(dplyr) # Load Library
library(ggplot2)

search() # Check Library List

# Iris Data Set
str(iris)
head(iris, 10)

plot(iris)
plot(iris$Petal.Width, # X Stick
     iris$Petal.Length, # Y Stick
     col=iris$Species) # Hue

# Tips Data Set
tips=read.csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv') # Load CSV
str(tips)
tips
head(tips, 10)
summary(tips) # print statistics information

library(dplyr) # Load Library
library(ggplot2)

# %>% : link command
tips%>%ggplot(aes(size)) + geom_histogram() # Histogram  
tips%>%ggplot(aes(total_bill, tip)) + geom_point() # Scatter
tips%>%ggplot(aes(total_bill, tip)) + geom_point(aes(col=day))
tips%>%ggplot(aes(total_bill, tip)) + geom_point(aes(col=day, pch=sex), size=3)