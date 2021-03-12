data = read.csv('C:/Users/user/님즈-BMS/data/B05_discharge.csv') #데이터 불러오기

head(data) # 데이터 확인

#SOH 계산
canonical_capacity = 2
soh_data = data.frame(data['capacity']/canonical_capacity)
names(soh_data) = c("soh")
head(soh_data)

df = cbind(data,soh_data)
head(df)
# 최종 데이터 : df

