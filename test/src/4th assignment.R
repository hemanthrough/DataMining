shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153,161,167,169,173,176,182,181,188,189)
bspl<-data.frame(shoesize,bodysize)
fit_model <-lm(bodysize~shoesize)
summary(fit_model)
#sqrt(sum(fit_model$residuals^2)/fit_model$df.residual) residual SE
plot(fit_model)+abline(fit_model$coefficients)
coef(fit_model)

plot(bspl)

#predicted model 
abline(fit_model)
#points in regression line
points(shoesize,fit_model$fitted.values,col="red")


#-------------------------------
