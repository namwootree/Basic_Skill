# 데이터 불러오기
data(airquality)
df1 <- airquality

# 파생변수 생성
# 화씨 온도를 섭씨 온도로 변환
df1 %>% mutate(Temp_C = (Temp - 32) / 1.8)

# Month와 Day를 활용해 날짜 데이터 만들기
# paste0 : 문자를 이어붙여주는 함수
# as.character : 숫자데이터를 문자로 변환
df1 %>% 
  mutate(Date = paste0('2022-0', as.character(df1$Month), '-', as.character(df1$Day)))

# 데이터 내 특정 조건에 따라서 파생변수를 생성
# ifelse(조건1, 수행식1, 수행식2) 
# 조건1이 만족하면 수행식1 실행 / 아니면 수행식2 실행
df1 <- df1 %>% mutate(Day_clean = ifelse(Day<10, paste0('0', Day), Day))

df1 <- df1 %>% 
  mutate(Date = paste0('2022-0', as.character(df1$Month), '-', as.character(df1$Day_clean)))

head(df1)