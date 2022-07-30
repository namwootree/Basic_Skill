# 변수 : 데이터를 담고 다니는 공간
y <- c(1, 2, 3, 4, 5)

# 데이터의 타입을 확인 / 연속형, 문자형
class(y)

# 이 데이터의 타입이 연속형인가?
is.numeric(y)

# 이 데이터의 구조가 벡터 형태인가?
is.vector(y)

help('vector')
help('class')

# 연속형 데이터 연산
2 + 100
500 - 30

30 * 2
45 / 2
40 ^ 2

15 %/% 3
15 %% 3

# 통계 연산

# 최소 최댓
min(y)
max(y)

# 평균 또는 합
mean(y)
sum(y)

# 제곱근 / 로그
sqrt(100)
log10(100)
exp(100)

# 삼각함수
sin(50)
cos(60 )
tan(70)

# 평균이 0이고 표준편차가 5인 100개의 random data 생성
x <- rnorm(100, 0, 5)
x

hist(x)
 