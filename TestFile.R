plot(x=seq(-3,3,0.1),y=dnorm(seq(-3,3,0.1)),type="l",xlab="bhk",ylab="")
lines(c(1.645,1.645),c(0,dnorm(1.645)))
polygon(x=c(0,1.645,1.645,seq(1.6,-3,-0.1)),
y=c(0,0,dnorm(1.645),dnorm(seq(1.6,-3,-0.1))),col="orange",xlab="",ylab="")
 
 curve(dchisq(x,7),0,100)
 lines(c(16,16),c(0,dchisq(16,7)))
 polygon(x=c(16,16,16,seq(16,20,0.1)),
         y=c(0,0,dchisq(16,7),dchisq(seq(16,20,0.1),7)),col="orange",xlab="",ylab="")
 curve(df(x,7,7),0,10)
 lines(c(3.5,3.5),c(0,dchisq(16,7)))
 polygon(x=c(3.5,3.5,3.5,seq(3.5,6,0.1)),
         y=c(0,0,df(3.5,7,7),df(seq(3.5,6,0.1),7,7)),col="orange",xlab="",ylab="")
