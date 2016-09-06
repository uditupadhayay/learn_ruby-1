#write your code here
def add(num1,num2)
  ans = num1 + num2
  return ans
end

def subtract(num1,num2)
  ans = num1 - num2
  return ans
end

def sum(arr)
  if(arr.length == 0)
    return 0
  elsif (arr.length == 1)
    return arr[0]
  else
    ans = 0
    arr.each do |val|
      ans += val
    end
    return ans
  end
end

def multiply(*opt)
  ans = 1
  opt.each do |val|
    ans *= val
  end
  return ans
end

def power(num1,num2)
  return num1 ** num2
end

def factorial(num)
  if num == 0
    return 0
  end
  ans = 1
  num.downto(1) do |val|
    ans *= val
  end

  return ans
end

multiply(2,3)
