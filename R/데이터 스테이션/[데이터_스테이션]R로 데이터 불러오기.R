# Working Directory
setwd('/Users/namwoo/Desktop/알파코')

# 데이터 불렁오기
df1 <- read.csv('Data01.csv')

# 데이터의 구조와 타입 확인
head(df1) # 상위 6개 데이터
dim(df1) # 데이터의 행 / 열 갯수
str(df1) # 데이터의 정보요약

# 패키지 : 특정 목적을 달성하기 위한 함수들의 집합
install.packages('dplyr')

# 패키지를 불러옴
library('dplyr')

# dplyr : 정형 데이터 전처리
# %>% : 파이프 -> 함수들을 연속해서 사용할 수 있음

df1 %>% slice(1, 6) %>% select(c('입고수량'))
df1 %>% select(c('입고수량', '출고수량')) %>% head()
