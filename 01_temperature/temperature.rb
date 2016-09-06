#write your code here
def ftoc(temp)
  ret = (temp - 32) * 5/9
  return ret
end

def ctof(temp)
  ret = ( 9* (temp/5.0) )  + 32
  return ret
end
