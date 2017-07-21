library(readxl)
Ass6_dm_data <- read_excel("C:/Users/GuestBhk/Downloads/Ass6-dm-data.xls")
#removing the error
names(Ass6_dm_data)[1] <- "age"

Ass6_dm_data <- Ass6_dm_data[-c(94,101:104),]
Ass6_dm_data <- Ass6_dm_data[,-10]
cols<-names(Ass6_dm_data)
model<- as.formula(paste("age ~", paste(cols[!cols %in% cols[1]], collapse = " + ")))
bloodLinearModel<-lm(model,data = Ass6_dm_data)
#the intercept here is 219 how 
summary(bloodLinearModel)
#what is residuals vs leverage interpretation
#in qq plot are there only 2 outliers 
#resi vs fitted gives lot of errors but qq plot gives high corelation , does it 
#say anything about corelation
plot(bloodLinearModel)
plot(Ass6_dm_data$age,bloodLinearModel$fitted.values)
#its right skewed
hist(bloodLinearModel$residuals)
#prediction data
Ass6_dm_dataPred <- read_excel("C:/Users/GuestBhk/Downloads/Ass6-dm-data.xls", 
                            sheet = "prediction data", col_types = c("numeric", 
                                                                     "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric"))

Ass6_dm_dataPred <-Ass6_dm_dataPred[,-1]
#evry value is more than 222
predict(bloodLinearModel,Ass6_dm_dataPred)

Ass6_dm_data_log <- Ass6_dm_data
Ass6_dm_data_log[,-1]<-log(Ass6_dm_data[,-1]+1)
bloodLogModel<-lm(model,data = Ass6_dm_data_log)
summary(bloodLogModel)
plot(bloodLogModel)
hist(bloodLogModel$residuals)
#has to verified anti log of log(x+1)
plot(Ass6_dm_data$age,bloodLinearModel$fitted.values)
predict(bloodLogModel,log(Ass6_dm_dataPred)+1)
#how can we use y as in 
sqmodel<- as.formula(paste("sqrt(age) ~", paste(cols[!cols %in% cols[1]], collapse = " + ")))
bloodSqrtModel<-lm(sqmodel,data = Ass6_dm_data_log)
summary(bloodSqrtModel)
plot(bloodSqrtModel)
hist(bloodSqrtModel$residuals)
plot(Ass6_dm_data$age,(bloodLinearModel$fitted.values)^2)
predict(bloodSqrtModel,Ass6_dm_dataPred)
