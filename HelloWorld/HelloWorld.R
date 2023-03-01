#we can use the print function
print("hello world!")
print("hello world", quote=FALSE)
print(paste("How","are","you"))
print(paste("How","are","you"),quote=FALSE)

my.name<-readline(prompt = "Enter name: ") # reading the name variable

my.age<-readline(prompt = "Enter age: ") # reading the age variable

my.age <-as.integer(my.age)

print(paste("Hi",my.name,"next year you will be",my.age+1,"years old."))
