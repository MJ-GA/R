

lagInter<- function() {
  
  print ("Please enter xVec elements")
  xVec =scan(what = double())
  
  N = length (xVec)
  
  
  print ("Please enter yVec elements")
  repeat{
    yVec=scan(what = double())
    if(length(yVec) == N){
      break
    } else 
      print ("Please enter a vector that has the same length as xVec")
  }
  
  repeat {
    xK= scan(what = double())
    if (xK <= max(xVec) & xK >=min(xVec) ){
      break
    } else 
      print (paste("Please enter a value between",min(xVec),"and",max(xVec)))
  }
  result =0
  for (i in 1:N){
    numerator=1
    denominator=1
    for(j in 1:N){
      if(i!=j){
        numerator =numerator*(xK-xVec[j])
        denominator=denominator*(xVec[i]-xVec[j])
      }
      j<-j+1
    }
    
    result=result+(numerator/denominator)*yVec[i]
    i<-i+1
  }
  
  print(paste("Result is ",result))
 
}

lagInter()


