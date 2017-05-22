#Excercise 1 a
#7c3
print(c("there are ",length(combn(7,3)[1,]),"combinations"))

#excercise 1 b

#probability of 1 person or less being in effective is 7c1 p(ne)* p(e)^6 + .9^7
print(c("the probability of not effective for less than 1 person is ",length(combn(7,1)[1,]) * .1*.9^6+ .9^7,"combinations"))
#so negattion of this event gives the probabilty of more than 1 person
print(c("the probability of not effective for more than 1 person is ",1-(length(combn(7,1)[1,]) * .1*.9^6+.9^7),"combinations"))

#we can also do this using binomial distribution by using the following functions
print(c("the probability of not effective for more than 1 person is ",pbinom(5,size = 7, prob = .9),"combinations"))


#excercise 2 a
#acc to question
# result/treatment  ok  ill   sum
#   med             3   1     4
#   placebo         3   1     4
#   sum             6   2     8


#4C3
total_combiationa<- choose(4,3)*choose(4,3)
total_permutaions <- choose(8,6)
probality<- total_combiationa/total_permutaions

print(c("this has the probability ",probality*100))


#excercise 2 b
total_combiationa<- (choose(4,2)*choose(4,4) + choose(4,3)*choose(4,3)+choose(4,4)*choose(4,2))
total_permutaions <- choose(8,6)
probality <- total_combiationa/total_permutaions
print(c("this has the probability ",probality*100))

#we accept the null hypothesis

# excercise 3
df <- matrix(c(3,1,4,3,1,4,6,2,8),nrow = 3)


#excercise 3 b
#acc to question
# result/treatment  ok  ill   sum
#   med             23   1    24
#   placebo         23   1    24
#   sum             46   2    48

df2 <- matrix(c(23,1,23,1),nrow = 2)
fisher.test(df2,alternative = "two.sided")
bdpv::BDtest(df2[1:2,1:2],pr = .01)



chi <- 48* (abs((23*1 - 23*1))- 24)^2/(46*2*24*24)
print(chi)