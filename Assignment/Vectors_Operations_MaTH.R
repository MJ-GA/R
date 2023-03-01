
#Creates a a vector of random 50 numbers after setting the seed to 75

set.seed(75)

aVec <-rpois(50,500)

bVec <-rpois(50,500)

#Part B

#create a vector by inserting the result of subtracting aVec from bVec

matrice <-bVec [2:50]-aVec[1: 49]

#create a matrix from the vector above ( by column)
matrix(matrice,ncol=7,byrow = FALSE)

#Part c
result<- cos(bVec[1:49])/sin(aVec[2:50])

result

#Part D
total <-0

for (i in 1:49) {
 total <-total + exp(-aVec[i+1])/(aVec[i]+5)

}

print(paste("The result of the series is : ", total))

