shoesize<-c(38,38,39,39,40,40,41,41,42,42)
bodysize<-c(153,161,167,169,173,176,182,181,188,189)
#array of ones 
col_one <- rep(1,length(shoesize))
#constructing the mat
XMat <-matrix(c(col_one,shoesize),ncol = 2)
#transpose of matrix
XTrans<- t(XMat)
#order is imprtant perform with caution
XTrans_x_XMat<-XTrans%*%XMat
#got the (xtrans*x )mat inv
inv_XTrans_x_XMat<-solve(XTrans%*%XMat)
#x tran and y 
xTrans_x_Y <- XTrans %*% bodysize
# (XTrans*X)-1 XTrans y
#b or linear values
linearValues <-inv_XTrans_x_XMat%*%XTrans %*% bodysize
#predictions
prediction <-   XMat %*% linearValues


ssRed <- sum((prediction - bodysize)^2)
msRed <- ssRed/8
rse<- sqrt(msRed) #it is similar to what we got in summary of asst 4


#multiplying rse with sqrt of diagnals gives the std error
#ie sqrt(1/x^2) *rse
stdErrors<-sqrt(diag(inv_XTrans_x_XMat))* rse
#t value is given by x- mean /s which is already done earlier we use
tvalues<-linearValues/stdErrors
#pt always gives a single tail on either side, hence add other side by multi
#ling by 2
 probOfT1 <- 2* pt(tvalues[1,1],8,lower.tail = T)
 probOfT2 <- 2* pt(tvalues[2,1],8,lower.tail = F)



# the prob is lower than stated when you do qt with prob in lm u get
# the points to be 5.178793  and 12.20504 why is the chnage?

#curve(pt(x,8,lower.tail = F),-5,14)

linear_model <- lm(bodysize~shoesize)
plot(shoesize,linear_model$residuals)
plot(fitted(linear_model), resid(linear_model), main="Residuals vs Fitted",
     xlab="Fitted values", ylab="Residuals")

plot(fitted(linear_model), shoesize, main="Residuals vs Fitted",
     xlab="Fitted values", ylab="Residuals")
hist(linear_model$residuals)
qqnorm(resid(linear_model), main="Residuals Rankit Plot")
