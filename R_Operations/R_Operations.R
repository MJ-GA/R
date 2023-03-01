


#First task
name <- readline(prompt= "Input your name: ") # reading variables

age <- readline(prompt= "Input your age: ") 

age <-as.integer(age) # age to integer type

print(paste("My name is",name,"and I will be",age+1,"years old next year")) #printing the phrase

#Second task

v1  <- c(1,3,5)
v2  <- c(7,9,11)
v3  <- c(13,15,17)

m <- cbind(v1,v2,v3) #create a matrix using the vectors we created

m # printing the matrix


#Third task

Students <- data.frame(
   Name =c("Michael A","Jennifer R","Sara B","James H"),
   Gender =c("M","F","F","M"),
   Age =c("18","19","20","22"),
   Designation =c("CET","CP","SSN","CS"),
   NoCourses =c("5","4","<NA>","3")
  
)

print(Students)
