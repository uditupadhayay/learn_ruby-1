class Book
# write your code here
attr_reader :title
def title=(str)
  arr_conjuction = ["and","the","in","of","a","an"]
  arr = str.split
  @title = arr[0].capitalize
  1.upto(arr.length - 1 ) do |val|
    if !arr_conjuction.include? arr[val]
      arr[val].capitalize!
    end
      @title += " " + arr[val]
  end

end
end


book = Book.new

book.title = "war and peace"
