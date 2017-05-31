#excerise 3
shopList <- matrix(c(6,5,7,5,4,3,8,3,5,7,3,6),nrow =4,
                   dimnames = list(c("fred","jenny","lizzy","joe"),c("apples","pears","banana")))
prices <- matrix(c(.5,.6,.3,.4,.8,.2,.35,.65,.25),nrow = 3,
                 dimnames = list(c("apples","pears","banana"),c("shop1","shop2","shop3")))
#multiplication
total_cost <- shopList%*%prices