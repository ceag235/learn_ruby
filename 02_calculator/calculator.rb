#write your code here
def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end


def sum(nums)
  total=0
  nums.each{ |num| total=total+num}
  total
end

def multiply(num1,num2)
  num1*num2
end

def multiplies(nums)
  total=1
  nums.each{ |num| total=total*num}
  total
end

def power(num1,num2)
  total=num1
  while num2 > 1 do
    total=total*num1;
    num2=num2-1;
  end
  total
end

def factorial(num)
  if num==0 or num==1
    total=1
  else
    total=num
    while num > 1 do
      num=num-1
      total=num*total
    end
  end
  total
end
