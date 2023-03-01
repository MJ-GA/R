
cty = vector()

#Vector cty representing cty column from the mpg dataset

cty <- c(18,21,20,21,16,18)

#Finding the mean 

myMean <-function (x){
mean <- Reduce('+',cty)/6 }

#Sorting cty in Ascending order

sortedCty=sort(cty)

#Check if length of cty is ODD or EVEN , act accordingly

if(length(cty)%%2==0) {
  median <- (sortedCty[length(cty)/2]+sortedCty[(length(cty)/2)+1])/2
  } else
    {
      median <- sortedCty[length(cty)/2] 
    }

#Find mode 

unique_elements <- unique(cty)
mode<-unique_elements[which.max(tabulate(match(cty,unique_elements)))]

#Standard deviation

standard_deviation <- sqrt(Reduce("+",(cty-mean)^2)/length(cty))

#Variance 

variance<-standard_deviation^2
#Printing all values

cat(sprintf("mean = : %i ,Built-in mean : = %i \nmedian = : %.2f , Built-in median =%.2f \nmode = : %.2f \nstandard deviation : = %.5f, built-in standard deviation = %0.5f \nvariance : = %.1f ",mean,mean(cty),median,median(cty),mode,standard_deviation,sd(cty),variance))




