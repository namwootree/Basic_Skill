a <- 10

if (a>5) {
  print('a is bigger than 5')
} else {
  print('a is smaller than 5')
}

b <- c(readline('Insert Number : '))

if (b>=90) {
  print('A')
} else if (b >= 80) {
  print('B')
} else if (b >= 70) {
  print('C')
} else {
  print('F')
}

# while : 특정 조건이 만족되는 도안 종속 문장 실행
y <- 0

while(y<5){
  print('Hi')
  y <- y + 1
}

sum(v1)
# for : 특정 범위 만족되는 동안 종속 문장 실행
for (i in 1:10){
  print(i)
}

v1 <- c(1:10)
v1
sum1 <- 0
for (i in v1){
  sum1 <- sum1 + v1[i]
}
print(sum1)

mean(v1)
sum(v1)
