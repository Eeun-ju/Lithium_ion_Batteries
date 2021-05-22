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

cycles =x
starting_point = 100 #논문 속 starting point
soh_list
#install.packages('EMD')
library('EMD')
train = soh_list[1:starting_point]
test = soh_list[starting_point:168]
test
try = emd(train,max.imf = 4,plot.imf = F)
par(mfrow=c(3,1),mar=c(3,2,2,1))
plot(train,main = "signal")
rangeimf = range(try$imf)
for(i in 1:try$nimf){
  plot(c(1:100),try$imf[,i],type = 'l',xlab="",ylab = "",ylim=rangeimf,main = paste(i,"-th IMF",sep=""));abline(h=0)
}
plot(c(1:100),try$residue,xlab="",ylab="",main="Residue",type="l",axes=FALSE);box()


#level-IMF ARIMA model prediction
#c1
#install.packages('forecast')
library('forecast')
train_Set = try$imf[,1]
mod = arima(train_Set,order = c(2,0,0))
forecast(mod,h=30)
