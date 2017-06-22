shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153,161,167,169,173,176,182,181,188,189)
bspl<-data.frame(shoesize,bodysize)
fit_model <-lm(bodysize~shoesize)
summary(fit_model)
#sqrt(sum(fit_model$residuals^2)/fit_model$df.residual) residual SE
#plot(fit_model)+abline(fit_model$coefficients)
coef(fit_model)

plot(bspl)

#predicted model 
abline(fit_model)
#points in regression line
points(shoesize,fit_model$fitted.values,col="red")


#-------------------------------
#since we have -ve to elimnate this we use the log transformation
log_model <- lm(log(bodysize)~shoesize)
summary(log_model)
#plotting the points
plot(bspl)
#reg line of log model
points(shoesize,exp(fitted(log_model)),type = "lin",col="red")
#comparing with linear fit
abline(fit_model)

#-----------------------sq model

sqMOdel <-lm(bodysize~shoesize+I(shoesize ^2))
plot(bspl)
points(shoesize,fitted(sqMOdel),type = "l",col="yellow")

summary(sqMOdel)


#---------------

x1 <- c(-1,1,-1,1)
x2 <- c(-1,-1,1,1)
y <- c(3,5,7,11)
#set up the data
dataSet <-data.frame(x1,x2,y)
#linear model 
liner2vars<-lm(y~x1+x2)
summary(liner2vars)
plot(liner2vars)
predict(liner2vars,data.frame(x1=2,x2=1))

#chaning the coordinates 
dataSet[dataSet$x1 ==1,1] <-40 
dataSet[dataSet$x1 ==-1,1] <- 20
dataSet[dataSet$x1 ==1,1] <-30
dataSet[dataSet$x1 ==-1,1] <-20
dataSet
liner2varsNew<-lm(y~x1+x2,data = dataSet)
summary(liner2varsNew)
plot(liner2varsNew)
predict(liner2varsNew,data.frame(x1=2,x2=1))
#as we can see the predicts have reduced slope  is more slant ie less steep
