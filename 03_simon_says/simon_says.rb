#write your code here

def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str,num=2)
  ans = str
  num.downto(2) do
    ans = ans + " " + str
  end
  return ans
end

def start_of_word(str,num)
  ans = ""
  0.upto(num-1) do |val|
    ans += str[val].to_s
  end
  return ans
end

def first_word(str)
  arr = str.split
  return arr[0]
end

def titleize(str)
  arr_little = ["the","and","over"]
  arr = str.split
  arr[0].capitalize!
  1.upto(arr.length - 1) do  |val|
    if  !arr_little.include?arr[val]
        arr[val].capitalize!
    end
  end


  ans = arr[0]
   1.upto(arr.length - 1) do |val|
     ans = ans + " " + arr[val]
   end

   return ans
end
