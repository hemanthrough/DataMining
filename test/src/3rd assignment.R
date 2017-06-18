#excerise 3
#always give values by column  
shopList <- matrix(c(6,5,7,5,4,3,8,3,5,7,3,6),nrow =4,
                   dimnames = list(c("fred","jenny","lizzy","joe"),c("apples","pears","banana")))
prices <- matrix(c(.5,.6,.3,.4,.8,.2,.35,.65,.25),nrow = 3,
                 dimnames = list(c("apples","pears","banana"),c("shop1","shop2","shop3")))
#multiplication
total_cost <- shopList%*%prices


base_vect1 <- matrix(c(1,0),nrow = 2)
base_vect2 <- matrix(c(0,1),nrow = 2)
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

#part 2 
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
#-----------------------------------------
#Dilation matrix , its a matrix which keeps the shape or the figure the same
#but increases or decreses the size 
#the given dialtion matrix 
matrix(c(3,0,0,2),nrow =2)

#scales the gievn matrix 
matrix(c(2,3,4,1),ncol =2)

#first row by 3 and second row by 2

matrix(c(3,0,0,2),nrow =2)%*%matrix(c(2,3,4,1),ncol =2)


#b) How does it operate on the two base vectors?

#the dialtion matrix

matrix(c(3,0,0,2),nrow =2)

#scales the 1st given matrix  by3 

matrix(c(1,0),ncol =1)
#as below 

matrix(c(3,0,0,2),nrow =2)%*%matrix(c(1,0),ncol =1)

#and scales the second matrix by 2

matrix(c(3,0,0,2),nrow =2)%*%matrix(c(0,1),ncol =1)


#How does the identity matrix operate on a vector?
#given identity matrix 
matrix(c(1,0,0,1),nrow = 2)

# the rotation matrix 

matrix(c(.8,-0.6,0.6,.8),nrow = 2)

#rotates the identity matrix by 
180/pi * acos(.8) #degrees

#resultant matrix is rotated clockwise shown by 
matrix(c(1,0,0,1),ncol = 2)%*%matrix(c(.8,-0.6,0.6,.8),nrow = 2)

#pictorically it can be shown by 
plot(c(matrix(c(1,0,0,1),ncol = 2)%*%matrix(c(.8,-0.6,0.6,.8),nrow = 2)),
     col="red",type = "p",ylim =c(-2,2),xlim= c(-2,5),
     main = "change after applying the rotation matrix")
lines(c(matrix(c(1,0,0,1),nrow = 2)),type = "p")

# the area of the matrix will be one that is still the same 
det(matrix(c(1,0,0,1),ncol = 2)%*%matrix(c(.8,-0.6,0.6,.8),nrow = 2))

# multiplyin rot mat by base vector yeilds the same result 
matrix(c(.8,-.6,.6,.8),nrow =2)%*%matrix(c(0,1),ncol =1)
matrix(c(.8,-.6,.6,.8),nrow =2)%*%matrix(c(1,0),ncol =1)

#========================================================
#reflection matrix

#multiplying by the reflection matrix gives the reflection along the column of the matrix
matrix(c(0,1,1,0),nrow =2)%*%matrix(c(2,3,4,5),ncol =2)
#this can be seen in the ilustration below
#mat 1,0
matrix(c(0,1,1,0),nrow =2)%*%matrix(c(1,0),ncol =1)
#mat 0,1
matrix(c(0,1,1,0),nrow =2)%*%matrix(c(1,0),ncol =1)

det(matrix(c(matrix(c(0,1,1,0),nrow =2)%*%matrix(c(1,0),ncol =1),matrix(c(0,1,1,0),nrow =2)%*%matrix(c(0,1),ncol =1)),nrow = 2))



#this matrix 

matrix(c(-.6,.8,.8,.6),ncol = 2) 

#reflects and roates the matrix anticlockwise by 

180/pi * asin(-.8) #degrees

# the base vector transform to this only the first comp is taken not sure how this works
matrix(c(-.6,.8,.8,.6),ncol = 2) %*% matrix(c(1,0),ncol=1) 

matrix(c(-.6,.8,.8,.6),ncol = 2) %*% matrix(c(0,1),ncol=1) 


#there wont be no chnage in the area

det(matrix(c(matrix(c(-.6,.8,.8,.6),nrow =2)%*%matrix(c(1,0),ncol =1),matrix(c(-.6,.8,.8,0.6),nrow =2)%*%matrix(c(0,1),ncol =1)),nrow = 2))







symm_mat <- matrix(c(3,1,1,3),ncol = 2)
#-----------------------symmetric matrix
#How does the identity matrix operate on a vector?
# there will be no change to the vector

#How does it operate on any 2* matrix?
#i think its normal matrix multiplication (have to check)

#How does it operate on the two base vectors?
#first column of the symmetric mat is selected
matrix(c(3,1,1,3),ncol = 2)%*%matrix(c(1,0),nrow =2)
#second column of the symmetric is selected
matrix(c(3,1,1,3),ncol = 2)%*%matrix(c(3,2),nrow =2)

# area spanned by these 2 vectors will be same as that of the symmetric 
#vector
symm_mat %*% (symm_mat%*%base_vect1)


#the multiplication with the symmetric matrix will give the result in 
#same direction of symmetric matrix as shown below

#note run step by step
image(base_vect1,base_vect2,xlim = c(0,10),ylim = c(0,10))
#direction of the symmetric mat from base vector
arrows(base_vect1[1],base_vect1[2],symm_mat[1],symm_mat[2],symm_mat[3],symm_mat[4],col = "red")
#dierction of matrices after muttiplication FIRSt mult
arrows(x0= base_vect1[1],y0=base_vect2[1],x1= 3,y1=1,col = "green")
#dierction of matrices after muttiplication second  mult
arrows(x0= base_vect1[1],y0=base_vect2[1],x1= 10,y1=6)

#mult with new vector gives
symm_mat%*%matrix(c(3,2),nrow=2)

arrows(x0= base_vect1[1],y0=base_vect2[1],x1= 11,y1=9,col = "yellow")

#its almost in the same direction in macro level

#hence we can say that direction of the symmetric vectors will be in the same
#direction








#eigen values
# lambda * A = A

# for given matrix the eigen values are imaginary (7+i7/4)
#yet to verify

#Can you find the rotation matrix, that turns the two base vectors into the direction of the two eigenvectors?
#sinc both the roots are imaginary i think it should be sqaured and rotated by 90 degree to get the rotaion matrix

#Can you find the dilation matrix, by which the two eigenvectors are dilated?
#may be the same matrixis the dilation matrix


#in the following inverse matrix is the one which gives identity mat so the
# secnd is not as expected