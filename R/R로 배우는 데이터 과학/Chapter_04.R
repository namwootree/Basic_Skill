test=c(15, 20, 30, NA, 45)
test[test<40]
test[test%%3!=0]
test[is.na(test)]
test[!is.na(test)]
test[test%%2==0&!is.na(test)]

characters=data.frame(name=c('a', 'b', 'c'),
                      age=c(30, 16, 21),
                      gender=factor(c('M', 'F', 'M')))
characters

characters[characters$gender=='F', ]
characters[characters$age<30&characters$gender=='M', ]

x=5
if(x %% 2 == 0){
  print('x is TURE')
}

else {
  print('x is False')
}

x=-1
if(x>0){
  print('x is a positive value')
} else if (x<0) {
  print('x is a negative value')
} else {
  print('x is zero')
}

x=c(-5:5)
options(digits=3)
sqrt(x)
sqrt(ifelse(x>=0, x, NA))

i=1
repeat {
  if (i > 10) {
    break
  } else {
    print(i)
    i=i+1
  }
}

i=1
while (i <= 10) {
  print(i)
  i=i+1
}

i=1
while(i < 10) {
  print(paste(2, "X", i, '=', 2*i))
  i=i+1
}

for (i in 1:10) {
  print(i)
}

for (i in 1:9) {
  print(paste(2, 'X', i, '=', 2*i))
}

for (i in 2:9) {
  for(j in 1:9) {
    print(paste(i, "X", j, '=', i*j))
  }
}

for (i in 1:10) {
  if (i %% 2 == 0) {
    print(i)
  }
}

for (i in 1:10) {
  check=0
  for (j in 1:i) {
    if (i %% j == 0) {
      check = check+1
    }
  }
  if (check==2) {
    print(i)
  }
}

fact = function(x) {
  fa = 1
  while (x>1) {
    fa = fa*x
    x=x-1
  }
  return(fa)
}  
fact(5)

my.is.na<-function(x) {
table(is.na(x))
}
my.is.na(airquality)

str(airquality)
head(is.na(airquality))
table(is.na(airquality))
table(is.na(airquality$Temp))
table(is.na(airquality$Ozone))
mean(airquality$Temp)
mean(airquality$Ozone)

air_narm=airquality[!is.na(airquality$Ozone), ]
air_narm

mean(air_narm$Ozone)
air_narm1=na.omit(airquality)
mean(air_narm1$Ozone)
mean(airquality$Ozone, na.rm=T)

patients=data.frame(name=c('p1', 'p2', 'p3', 'p4', 'p5'),
                    age=c(22, 20, 25, 30, 27),
                    gender=factor(c('M', 'F', 'M', 'K', 'F')),
                    blood.type=factor(c('A', 'O', 'B', 'AB', 'C')))

patients

patients_outrm = patients[patients$gender=='M'|patients$gender=='F', ]
patients_outrm

patients_outrm1 = patients[(patients$gender=='M'|patients$gender=='F') & 
                             (patients$blood.type=='A'|
                              patients$blood.type=='B'|
                              patients$blood.type=='O'|
                              patients$blood.type=='AB'), ]

patients_outrm1

patients=data.frame(name=c('p1', 'p2', 'p3', 'p4', 'p5'),
                    age=c(22, 20, 25, 30, 27),
                    gender=c(1, 2, 1, 3, 2),
                    blood.type=c(1, 3, 2, 4, 5))

patients

patients$gender=ifelse((patients$gender<1|patients$gender>2), NA, patients$gender)
patients

patients$blood.type=ifelse((patients$blood.type<1|patients$blood.type>4), NA, patients$blood.type)

patients

patients[!is.na(patients$gender)&!is.na(patients$blood.type), ]

boxplot(airquality[, c(1:4)])
boxplot(airquality[, 1])$stats

air=airquality
table(is.na(air$Ozone))
air$Ozone=ifelse(air$Ozone<1|air$Ozone>122, NA, air$Ozone)
table(is.na(air$Ozone))