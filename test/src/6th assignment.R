library(readxl)
Ass6_dm_data <- read_excel("C:/Users/GuestBhk/Downloads/Ass6-dm-data.xls")
#removing the error
names(Ass6_dm_data)[1] <- "age"
Ass6_dm_data <- Ass6_dm_data[-c(94,101:104),]
Ass6_dm_data <- Ass6_dm_data[,-10]
cols<-names(Ass6_dm_data)
model<- as.formula(paste("age ~", paste(cols[!cols %in% cols[1]], collapse = " + ")))
bloodLinearModel<-lm(model,data = Ass6_dm_data)
summary(bloodLinearModel)
#what is residuals vs leverage interpretation
#in qq plot are there only 2 outliers 
#resi vs fitted gives lot of errors but qq plot gives high corelation
plot(bloodLinearModel)
