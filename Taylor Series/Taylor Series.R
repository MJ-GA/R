 x<-scan()

sequence = seq(-3.5,3.5,0.1)

f1 =11 +x-(1/3*(x^3)) -(1/6 * (x^4))
f2 = 10+exp(x)*cos(x)
y=c()

f1 <-function(y){
  11 + y - (1/3*(y^3)) - (1/6 *(y^4))
  
}
c <- c()

f2 <- function(c){
  10+exp(c)*cos(c)
}
fx = 11+sequence -(1/3*(sequence^3)) - (1/6 *(sequence^4))
xValues =seq(-3.5,3.5,0.1)
main =(10+(exp(xValues)* cos(xValues)))

plot(xValues,main,type="l",lwd=3,xlab="X",ylab = "Y")
lines(sequence,fx,col='red',lwd=3)

xs <-seq(-3.5,3.5,0.5)

absoluteError = abs(f1(xs)-f2(xs))
relativeError = (absoluteError/f2(xs))*100


dataTable <-data.frame(
  "x"=xs,
  "Absolute Error"=absoluteError,
  "Relative Error" =relativeError
)
print(dataTable)



