
#Reading the csv file into a dataframe
myCarsList<-read.csv(file.choose(),TRUE,sep = ";")


#Printing the first 6 rows of the dataframe
head (myCarsList)

myCarsList <- myCarsList [-1,]

#Printing number of rows and columns respectively 
nrow(myCarsList)

ncol(myCarsList)

#printing classes of columns before change
sapply(myCarsList,class)

#Changing the classes of columns

class(myCarsList$Car) = "String"

class(myCarsList$MPG) = "double"

class(myCarsList$Cylinders) = "INT"

class(myCarsList$Displacement) = "double"

class(myCarsList$Horsepower) = "double"

class(myCarsList$Weight) = "double"

class(myCarsList$Acceleration) = "double"

class(myCarsList$Model) = "INT"

class(myCarsList$Origin) = "Factor"

#Prints the classes of columns after change
sapply(myCarsList,class)

#prints the maximum value in column MPG 
max(myCarsList$MPG)

#Prints rows in which Horsepower is greater than 100

myCarsList[which(myCarsList[,5]>100),]


#Prints rows in which Acceleration is less than 15
myCarsList[which(myCarsList[,7]<15),]

#assigns the results to a dataframe in order to export it 

horsepower <- myCarsList[which(myCarsList[,5]>100),]
acceleration <- myCarsList[which(myCarsList[,7]<15),]



write.table(horsepower,file="horsepower.csv",sep=";")

write.table(acceleration,file="acceleration.csv",sep=";")



hist(myCarsList$MPG[myCarsList$MPG>0],col='red',breaks = 6,main="MPG Histogram",xlab="MPG")

       
       






