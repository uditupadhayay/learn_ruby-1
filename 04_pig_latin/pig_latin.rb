#write your code here

def translate(str)
  vowels = ['a','e','I','O','U','A','E','i','o','u']

  arr = str.split

  arr.collect! do |str_val|
  if vowels.include?str_val[0]
    str_val = str_val + "ay"
  else
    ch = str_val[0]
    puts str_val
    num = 0
    str_temp = ""
    while ( !vowels.include? ch and num < str_val.length )
      str_temp += ch
      if (ch == "q" and str_val[num + 1] == "u" and num < str_val.length - 1)
        str_temp += str_val[num + 1]
        ch = str[num + 2]
        num += 2
      else
        ch = str_val[num + 1]
        num += 1
      end

    end
    str_val = str_val[num, str_val.length - 1] + str_temp + "ay"
  end
  str_val
end

  str = arr[0]
  1.upto(arr.length - 1 ) do |val|
    str = str + " " + arr[val]
  end

  return str
end


translate("banana")
