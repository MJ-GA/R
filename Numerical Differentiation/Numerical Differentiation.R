myFunction <- function ( x,y) {
  return (-y*cos(x))
}
Euler <-function (f,initial_x,initial_y,h,n){
  x <-initial_x
  y<-initial_y
  while (initial_x<=n){
initial_y<- initial_y+h *f(initial_x,initial_y)
initial_x<- initial_x + h
x<- c(x,initial_x)
y<- c(y,initial_y)
  }
  return(data.frame(x=x,y=y))
}

df1 <- Euler(myFunction,0,1.241,0.5,6)
step1 <- seq (0,6.5,0.5)
df2 <- Euler(myFunction,0,1.241,0.25,6)
step2 <- seq (0,6.25,0.25)
df3 <- Euler(myFunction,0,1.241,0.1,6)
step3 <- seq (0,6.1,0.1)

actualValue <- (0.5 * exp(sin(2))*exp(-1*sin(h1)))
absolute<- abs(df1[,2]-actualValue)
relErr <-abs((absolute/actualValue)*100)

Error <- data.frame(
  estimation=df1[,2],
  actual= c(actualValue),
  absolute_error=absolute,
  relative_error =relErr
)
  
print (Error)
actualValue<- (0.5*exp(sin(2))*exp(-1*sin(step3)))

plot(step3,actualValue,type ="l",main="Displacement Estimation", ylim = c(0,3.5),xlim=c(0,6), xlab="Time", ylab="Displacement")
legend(0,3.5,legend =c("Solution","h = 0.1","h = 0.25","h=0.5"), col=c("Black","Purple","Green","Blue"),lwd=3,cex=1)
lines (df1,type="l",col="blue",lwd=2)
lines(df2,type="l",col= "Green", lwd =2)
lines(df3,type="l",col= "Purple", lwd =2)
