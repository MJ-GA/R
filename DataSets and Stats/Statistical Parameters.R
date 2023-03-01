#Creating BMI dataframe
BMI <- data.frame ( 
  
  gender = c("Male","Male","Female","Male","Female","Female"),
  
  height = c(81,93,78,100,92,75),
  
  weight =c(152,171.5,165,140,192.1,180.2),
  
  Age = c(42,38,26,52,18,24)
  )

print(BMI)

heightSd<-sd(BMI$height)
weightSd<-sd(BMI$weight)

heightMean<-mean(BMI$weight)
weightMean<-mean(BMI$weight)




