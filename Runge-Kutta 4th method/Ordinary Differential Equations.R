f = function(t, ft) {
  return (cos(4*t)-2*ft)
}
real_f = function(t) {
  return (0.1*cos(4*t) + 0.2*sin(4*t)+ 2.9*exp(-2*t))
}

euler = function(f, real_f, h, x0, y0, xfinal) {
  N = (xfinal-x0)/h
  per_err = real_y = x = y = numeric(N+1)
  x[1] = x0
  y[1] = y0
  i = 1
  while(i <= N) {
    real_y[i] = real_f(x[i])
    per_err[i] = abs(real_y[i]-y[i])*100/real_y[i]
    x[i+1] = x[i] +h
    y[i+1] = y[i] + h * f(x[i], y[i])
    i = i + 1
  }
  real_y[N+1] = real_f(x[N+1])
  per_err[N+1] = abs(real_y[N+1]-y[N+1])*100/real_y[N+1]
  return (data.frame(
                    Time = x[2:length(x)], 
                    Exact_Temp = round(real_y[2:length(real_y)],digits=3),
                    Estimated_Temp =round( y[2:length(y)],digits=3), 
                    Percentage_Error = round(abs(per_err[2:length(per_err)]),digits=2)))
}

rungeKutta = function(f, real_f, h, x0, y0, xfinal) {
  N = (xfinal - x0)/h
  per_err = real_y = x = y = numeric(N+1)
  x[1] = x0
  y[1] = y0
  i = 1
  while(i <= N) {
    real_y[i] = real_f(x[i])
    per_err[i] = (real_y[i]-y[i])*100/real_y[i]
    k1 = h * f(x[i], y[i])
    k2 = h * f(x[i] + h/2, y[i] + k1/2)
    k3 = h * f(x[i] + h/2, y[i] + k2/2)
    k4 = h * f(x[i] + h, y[i] + k3)
    y[i+1] = y[i] + (k1 + 2*k2 + 2*k3 + k4)/6
    x[i+1] = x[i] + h
    
    i = i+1
  }
  real_y[N+1] = real_f(x[N+1])
  per_err[N+1] = abs(real_y[N+1]-y[N+1])*100/real_y[N+1]
  return (data.frame(
                    Time = x[2:length(x)],
                    Exact_Temp = round(real_y[2:length(real_y)],digits=3),
                    Estimated_Temp =round( y[2:length(y)],digits=3),
                    Percentage_Error = round(abs(per_err[2:length(per_err)]),digits=2)))
}

method ="0"

while (!method=="3") {
method = readline(prompt = "Choose the method to solve ODE: \n1. Euler's Method\n2. Runge-Kutta 4th Order Method\n3. exit \n")

if(method == "1") {
  step =as.numeric( readline(prompt = "Choose the step size \"h\" (0.8,0.2,0.05) : "))
  result = euler(f, real_f, step, 0, 3, 2)
  print(result)
} else if (method =="2"){
  step =as.numeric( readline(prompt = "Choose the step size \"h\" (0.8,0.2,0.05) : "))
  result = rungeKutta(f, real_f, step, 0, 3, 2)
  print(result)
} else if (method == "3") {
  print(" The program will now exit...")
}
}