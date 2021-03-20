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
# SOH 그래프 확인
soh_list = df[df$time == 0,]$soh
x = c(1:168)
plot(x,y = soh_list,
     xlab = "Cycles", ylab = "SOH",
     main = "Battery5 SOH")
abline(h=0.7,lwd=2,col="red") #Threshold - 0.7~0.8
