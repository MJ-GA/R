myString = readline()

first3let <- function(myString) {
  
  if(nchar(myString)<3)
    print ("Length of input string is less than 3")
   else 
   return(substr(myString,1,3))
}

first3let(myString)