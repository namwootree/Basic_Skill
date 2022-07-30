# 데이터 구조 (Vector / Matrix / DataFrame)
# 데이터 타입 (연속형 / 범주형)

# Vector
v1 <- c(1:10)
print(v1)
class(v1)
is.vector(v1)

v2 <- c(letters[1:10])
print(v2)
class(v2)
is.vector(v2)

length(v2)
range(v2)

v3 <- seq(1, 10)
print(v3)

v4 <- seq(1,10, by=2)
print(v4)

v5 <- seq(1, 10, length=5)
print(v5)

# Matrix
m1 <- matrix(1:12, ncol=3)
print(m1)

m2 <- matrix(1:12, nrow=3)
print(m2)

# DataFrame
# index / column / values
x <- matrix(1:12, nrow=4)
colnames(x) <- c('data1', 'data2', 'data3')
rownames(x) <- c('index1', 'index2', 'index3', 'index4')

df1 <- as.data.frame(x)
df1
