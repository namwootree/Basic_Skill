install.packages('gapminder')
library(gapminder)
install.packages('dplyr')
library(dplyr)
glimpse(gapminder)

gapminder[, c('country', 'lifeExp')]
gapminder[, c('country', 'lifeExp', 'year')]
gapminder[1:15,]
gapminder[gapminder$country=='Croatia', ]
gapminder[gapminder$country=='Croatia', 'pop']
gapminder[gapminder$country=='Croatia', c('lifeExp', 'pop')]
gapminder[gapminder$country=='Croatia'&gapminder$year>1999, c('lifeExp', 'pop')]

apply(gapminder[gapminder$country=='Croatia', c('lifeExp', 'pop')], 2, mean)          

select(gapminder, country, year, lifeExp)

filter(gapminder, country=='Croatia')

summarize(gapminder, pop_avg=mean(pop))
summarize(group_by(gapminder, continent), pop_avg=mean(pop))
summarize(group_by(gapminder, continent, country), pop_avg=mean(pop))

gapminder%>%group_by(continent, country)%>%summarize(pop_avg=mean(pop))

temp1=filter(gapminder, country=='Croatia')
temp2=select(temp1, country, year, lifeExp)
temp3=apply(temp2[, c('lifeExp')], 2, mean)

temp3

gapminder%>%filter(country=='Croatia')%>%
  select(country, year, lifeExp)%>%
  summarize(lifeExp_avg=mean(lifeExp))

getwd()
setwd('/Users/namwoo/Desktop/R')

avocado <- read.csv('/Users/namwoo/Desktop/R/avocado.csv', header=TRUE, sep=',')
str(avocado)
(x_avg=avocado%>%group_by(region) %>%summarize(V_avg=mean(Total.Volume), P_avg=mean(AveragePrice)))

(x_avg=avocado%>%group_by(region, year) %>% summarize(V_avg=mean(Total.Volume), P_avg=mean(AveragePrice)))

x_avg=avocado%>%group_by(region, year, type)%>%summarize(V_avg=mean(Total.Volume), P_avg=mean(AveragePrice))
x_avg

library(ggplot2)

x_avg%>%filter(region != 'TotalUS')%>%ggplot(aes(year, V_avg, col=type)) + 
  geom_line() + 
  facet_wrap(~region)

arrange(x_avg, desc(V_avg))

x_avg1=x_avg%>%filter(region != 'TotalUS')

x_avg1[x_avg$V_avg==max(x_avg1$V_avg)]

install.packages('lubridate')
library(lubridate)

(x_avg=avocado%>%group_by(region, year, month(Date), type) %>% summarize(V_avg=mean(Total.Volume), P_avg=mean(AveragePrice)))
