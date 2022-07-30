# 패키지 불러오기
install.packages('tidyverse')
library('tidyverse')

# 데이터 불러오기
data(airquality)
df1 <- airquality

# 데이터 구조와 타입 확인
dim(df1)
str(df1)

# 결측치 확인
colSums(is.na(df1)) 

# 기술 통계량 확인
summary(df1)

# 데이터 전처리
df1 %>% select('Ozone', 'Wind') %>% summary()

# 추출 (열 및 행단위)
df2 <- df1 %>% slice(1:20) # 1~20 데이터 추출 후 df2 변수로 선언
df2

df1 %>% select('Temp', 'Day') # 'Temp' & 'Day' 항목을 추출
df1 %>% select(1:3) # 1~3 열 추출

df1 %>% filter(Ozone >= 20) # 특정 조건에 해당하는 데이터 추출

# Wind 값이 10 이상인 데이터 중에서 Ozone 데이터와 Wind 데이터 추출
df1 %>% 
  filter(Wind >= 10) %>% 
  select('Ozone', 'Wind') %>% 
  write.csv('result1.csv')

# 데이터 정렬
df1 %>% arrange(Wind) # 오름차순 정렬
df1 %>% arrange(desc(Wind)) # 내림차순 정렬

# Ozone이 가장 높았던 상위 10개 데이터 추출
df1 %>% arrange(desc(Ozone)) %>% head(10) %>% write.csv('result2.csv')
