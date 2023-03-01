#First task
name <- readline(prompt= "Input your name: ") # reading variables

age <- readline(prompt= "Input your age: ") 

age <-as.integer(age) # age to integer type

print(paste("My name is",name,"and I will be",age+1,"years old next year")) #printing the phrase
