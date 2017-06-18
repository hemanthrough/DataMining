#excerise 3
shopList <- matrix(c(6,5,7,5,4,3,8,3,5,7,3,6),nrow =4,
                   dimnames = list(c("fred","jenny","lizzy","joe"),c("apples","pears","banana")))
prices <- matrix(c(.5,.6,.3,.4,.8,.2,.35,.65,.25),nrow = 3,
                 dimnames = list(c("apples","pears","banana"),c("shop1","shop2","shop3")))
#multiplication
total_cost <- shopList%*%prices

##this has to verified not sure 
#excercise 3 b

#How does the identity matrix operate on a vector?
# as the name suggests multiply or division leads to the same result

#How does it operate on any 2*2 matrix?
#it just same matrix

#How does it operate on the two base vectors?
diag(2)%*% matrix(c(1,0),ncol =1)
diag(2)%*% matrix(c(0,1),ncol =1)

#The area spanned by the two base vectors is 1, what's the area after applying the identity matrix? (trivial question)
#same as 1


##low rank matix

#How does this low rank matrix operate on any vector?

#contains the 1st col.
matrix(c(1,0,0,0),ncol =2)%*%matrix(c(2,3,4,1),ncol =2)
matrix(c(2,3,4,1),ncol =2)%*% matrix(c(1,0,0,0),ncol =2)
#it gives either the first row or column

#How does it operate on the two base vectors?
# it gives 1  
#its always 0


#How does this low rank matrix operate on any vector?
#either repeats 1st column or
matrix(c(1,1,0,0),ncol =2)%*%matrix(c(2,3,4,1),ncol =2)
#adds the column from col1 and col2
matrix(c(2,3,4,1),ncol =2)%*%matrix(c(1,1,0,0),ncol =2)
#repeats the first column
matrix(c(1,0,1,0),ncol =2)%*%matrix(c(0,1),nrow =2)
matrix(c(1,0,1,0),ncol =2)%*%matrix(c(1,0),nrow =2)
#The area spanned by the two base vectors is 1, what's the area after 
#applying the low rank matrix#2?
