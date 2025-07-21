def add(n1,n2) #Adds two numbers
    n1+n2
end
def subtract(n1,n2) #subs two numbers
    n1-n2
end
def sum(arr) #returns the sum of the numbers in array
    arr.sum
end
def multiply(n1,n2) #multiplies two numbers
    n1*n2
end
def pow(n1,n2) #gets powers
    n1**n2
end
def fac(n) #gets factorial of number with a loop
    f = 1
    (1..n).each{|i| f=f*i} 
    f
end