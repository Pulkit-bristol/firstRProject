# compute largest fibonacci number that is less than the given number
# so let`s say num = 10
# we start from 0 and 1
# 0+1 = 1, 1+1 = 2, 2+1=3, 3+2=5, 5+3=8, 8+5=13, since 13>10 so our 
# desired output is 8


"
s -> save the sum of the numbers
num -> the target number
f0 -> the first number of our series
f1 -> the second number of our fibonacci series
f0s -> this will be a new variable to save f0 for the next operation
"
max_fibo_number <- function(num,f0,f1,f0s,s){
  if(s<num){
    s = f0+f1
    #print(cat(num,f0,f1, s))
    max_fibo_number(num,f1,s,f0,s)
  }
  else{
    return(s-f0s)
  }
}
max_fibo_number(100,0,1,0,0)
