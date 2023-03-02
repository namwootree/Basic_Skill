# Chapter_03

## Variable
x = 1
y = 2

z = x + y
z

z <- x + y
z

x + y -> z
z

x=1
y=2
temp=x
x=y
x
y=temp
y

initial_value = 1
initial_value

blood.type = c('A', 'B', 'C', 'D')
blood.type

## calculation
x= 5
y= 2
x/y
xi = 1 + 2i
yi = 1 - 2i
xi + yi
str = 'hello, R'
str
blood.type = factor(c('A', 'B', 'AB', 'O'))
blood.type
T
F
NaN

is.integer(1)
is.numeric(1)
is.integer(1L)
is.numeric(1L)

## Vector
1:7
7:1
vector(length=5)
c(1:5)
c(1, 2, 3, c(4:6))
x = c(1, 2, 3)
x
y = c()
y = c(y, c(1:3))
y
seq(from=1, # Start
    to=10, # End
    by=2) # Step

seq(0, 1, by=0.2)
seq(0, 1, length.out=11)

rep(c(1:3),
    times=2) # replay time

rep(c(1:3), each=2) # facor repleat

x = c(2, 4, 6, 8, 10)
length(x)
x[1]
x[c(1, 2, 3)]
x[-c(1, 2, 3)]
x[c(1:3)]

x=c(1, 2, 3, 4)
y=c(5, 6, 7, 8)
z=c(3, 4)
w=c(5, 6, 7)
x + 2
x + y
x + z

x=1:10
x
x > 5
all(x>5)
any(x>5)
x=1:10
head(x)
tail(x)
head(x, 3)
tail(x, 3)

x=c(1, 2, 3)
y=c(3, 4, 5)
z=c(3, 1, 2)
union(x, y)
intersect(x, y)
setdiff(x, y)
setequal(x, y)
setequal(x, z)

# array
x = array(1:5, # value
          c(2,4)) # metrix
x

x[1, ]
x[, 2]
dimnamex = list(c('1st', '2nd'), # row name
                c('1st', '2nd', '3rd', '4th')) # col name
x = array(1:5, c(2, 4), dimnames=dimnamex)
x
x['1st', ]
x[, '4th']

v1 = c(1, 2, 3, 4)
v2 = c(5, 6, 7, 8)
v3 = c(9, 10, 11, 12)

cbind(v1, v2 , v3)
rbind(v1, v2, v3)

x=array(1:4, dim=c(2, 2))
y=array(5:8, dim=c(2, 2))
x
y

x + y 
x - y
x * y
x%*%y
t(x)
solve(x)
det(x)

x=array(1:12, c(3, 4))
x
apply(x,# data
      1, # row
      mean) # function

apply(x, # data
      2, # col
      mean) # function

x=array(1:12, c(3, 4))
dim(x)

x=array(1:12, c(3, 4))
sample(x)
sample(x, 10)
sample(x, 10, prob=c(1:12)/24)
sample(10)

## Data Frame
name=c('a', 'b', 'c')
age=c(22, 20, 25)
gender=factor(c("M", "F", "M"))
blood.type=factor(c('A', 'O', 'B'))

patients = data.frame(name, age, gender, blood.type)
patients

patients$name
patients[1, ]
patients[, 2]
patients[3, 1]
patients[patients$name == 'a', ]
patients[patients$name=='a', c('name', 'age')]

head(cars)
attach(cars) # Direct Use Feature
speed
detach(cars)

mean(cars$speed)
max(cars$speed)
with(cars, mean(speed))
with(cars, max(speed))

subset(cars, speed>20)
subset(cars, speed>20, select=c(dist))
subset(cars, speed>20, select=-c(dist))

head(airquality)
head(na.omit(airquality))

name=c('a', 'b', 'c')
age=c(22, 20, 25)
gender=factor(c('M', 'F', 'M'))
blood.type=factor(c('A', 'O', 'B'))

patients1=data.frame(name, age, gender)
patients1

patients2=data.frame(name, blood.type)
patients2

patients=merge(patients1, patients2, by='name')
patients

name1=c('a', 'b', 'c')
name2=c('d', 'b', 'f')
age=c(22, 20, 25)
gender=factor(c('M', 'F', 'M'))
blood.type=factor(c('A', 'O', 'B'))

patients1=data.frame(name1, age, gender)
patients1

patients2=data.frame(name2, blood.type)
patients2

patients = merge(patients1, patients2, by.x='name1', by.y='name2', all=TRUE)
patients

x=array(1:12, c(3, 4))
is.data.frame(x)

as.data.frame(x)

x = as.data.frame(x)
names(x)=c('1st', '2nd', '3rd', '4th')
x

patients=data.frame(name=c('a', 'b', 'c'), age=c(22, 22, 25),
                    gender=factor(c('M', 'F', "M")), blood.type=factor(c('A', 'O', 'B')))
no.patients=data.frame(day=c(1:6), no=c(50, 60, 55, 52, 65, 58))

listpatients=list(patients, no.patients)
listpatients

listpatients=list(patients=patients, no.patients=no.patients)
listpatients

listpatients$patients
listpatients[[1]]
listpatients[['patients']]
listpatients[['no.patients']]

lapply(listpatients$no.patients, mean)
lapply(listpatients$patients, mean)
sapply(listpatients$no.patients, mean)
sapply(listpatients$no.patients, mean, simplify=F)
