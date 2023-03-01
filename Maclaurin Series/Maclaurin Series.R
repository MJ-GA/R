library("readxl")


rocketData <- read_excel("data.xlsx")

xVec <-as.integer(rocketData$`t sec`)
yVec <-as.integer(rocketData$`d km`)

plot(time,km,type="l",main="Distance travelled by the rocket as a function of time.",col="red",xlab="Time in Secs",ylab="Km",lwd=3)


deriv1 <-function (xVec,yVec){
  firstDeriv <- vector()
 

  for (i in 1:length(xVec)-1) {
    
    firstDeriv[i]=(yVec[i+1]- yVec[i-1] )/ 50
  
  }
  firstDeriv[1] =0
  firstDeriv[19]= (yVec[length(yVec)] -yVec[length(yVec)-1])/50
  return(firstDeriv)
}

deriv2 <-function (xVec,yVec){
  firstDeriv <- vector()
  
  
  for (i in 1:length(xVec)-1) {
    
    firstDeriv[i]=abs((yVec[i+1]- 2*yVec[i] + yVec[i-1] )/ 50^2)
    
  }
  firstDeriv[1] =0
  firstDeriv[19]= abs((yVec[length(yVec)] -2*yVec[i] + yVec[length(yVec)-1])/50^2)
  return(firstDeriv)
}

km
time
velo
acceleration <- deriv2(xVec,yVec) *1000
acceleration
velo <-CDD(xVec,yVec)
plot(time,CDD(xVec,yVec)*1000,type="l",main="Velocity of Rocket",col="red",xlab="Time in Secs",ylab="Velocity/sec",lwd=3)

plot(time,acceleration,type="l",main="Acceleration of Rocket",col="red",xlab="Time in Secs",ylab="Velocity/sec",lwd=3)