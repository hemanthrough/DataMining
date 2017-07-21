#cleaned sol
examdata <- read.delim("clipboard",dec = ",")
attach(examdata)
head(examdata)
#plot(examdata)

plot(Lymphos~alter)
plot(alter,Lymphos)

#the lymphos decreses with age 
#cant make out much
plot(examdata$sex,examdata$Lymphos)
boxplot(c(examdata$sex),examdata$Lymphos)
plot(Lymphos~blutgr)
boxplot(c(blutgr),Lymphos)
#can make out much
plot(examdata$Lymphos,examdata$blutgr)

lModel <- lm(as.double(Lymphos)~I(1-exp(-((alter-250)/250))))
summary(lModel)
lModel$fitted.values
plot(lModel)
#remove outliers 56,90
examdata <-examdata[-c(56,90,1),]
lModel <- lm(as.double(Lymphos)~I(1-exp(-((alter-250)/250))))
plot(lModel)
plot(Lymphos~alter)
lines(alter,lModel$fitted.values)
boxplot(lModel$residuals)
hist(lModel$residuals)


## part 2


Omod<-lm(log(as.double( Lymphos))~ 
           I( (sqrt(alter)-mean(sqrt(alter)) / sd(sqrt(alter)) )))
plot(Omod)


##part 3 

#i think first model is better based on the qq plots it has lesser outliers 


#part 4 
l2Model <- lm(as.double(Lymphos)~I(1-exp(-((alter-250)/250)))+I(c(sex))+I(c(blutgr)))
#in l2model we can remobe the sex field
O2mod<-lm(log(as.double( Lymphos))~ 
           I( (sqrt(alter)-mean(sqrt(alter)) / sd(sqrt(alter)) )
              +I(c(sex))+I(c(blutgr))))
#o2model we can not remove anything
step(l2Model)
