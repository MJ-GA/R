number <- scan()

factorial <- function(number) {
  if (number == 0)    return (1)
  else           return (number *factorial(number-1))
}

factorial(number)