data = read.csv('C:/Users/user/����-BMS/data/B05_discharge.csv') #������ �ҷ�����

head(data) # ������ Ȯ��

#SOH ���
canonical_capacity = 2
soh_data = data.frame(data['capacity']/canonical_capacity)
names(soh_data) = c("soh")
head(soh_data)

df = cbind(data,soh_data)
head(df)
# ���� ������ : df
