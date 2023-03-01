
n<-as.integer(readline(prompt="Please enter the number of data pairs: "))
            
sprintf("Enter %i x-axis values:",n)
x<-scan()
            
sprintf("Enter %i y-axis values:",n)
y<-scan()
            
calcA1<- function(n,x,y){
  
  numerator= ((n*sum(x*y))-(sum(x)*sum(y)))
  
  denominator= n*sum(x^2)-(sum(x))^2
  
  return (numerator/denominator)
}

a1=calcA1(n,x,y)

a =mean(y)-(calcA1(n,x,y)*mean(x))

sprintf("y = %.5f X + %.3f",a1,a)

data<-data.frame(
  'x'=x,
  'y'=y,
  'yFitted'=round(a1*x+a ,digits=3))

data

sst= sum((y)^2)- ((1/n)*(sum(y)^2))

ssr=round(a1,digits=5)*(sum(x*y)-(1/n)*sum(x)*sum(y))

#The sum of the square of the residuals Sr

round(sst-ssr,digits=3)
