# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  mysum = 0 
  if arr.length == 0 
    mysum = 0
  else 
    i =0
    while i < arr.length
      mysum = mysum + arr[i]
      i = i+1
    end
  end
  return mysum
end

def max_2_sum arr
  # YOUR CODE HERE
  mysum2 = 0
  
  if arr.length == 0
    mysum2 = 0
  elsif arr.length == 1
    mysum2 = arr[0]
  else
    mysum2 = arr.sort.last(2).sum
  end
  return mysum2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  pair = arr.combination(2).find{ |x, y| x + y == n}
  if pair 
    true
  else 
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[qwrtypsdfghjklzxcvbnm]/i =~ s
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^(?:[01]*0)?0$/=~s
  
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  
  attr_accessor :isbn
  attr_accessor :price

 def initialize(isbn, price)
   raise ArgumentError.new("Incorrect ISBN") if isbn.length == 0
   raise ArgumentError.new("Price can not be Zero") if price == 0 
   raise ArgumentError.new("Price can not be Negative") if price < 0 
   
   @isbn = isbn
   @price = price
 end
 
 def price_as_string
  "$#{'%.2f' % @price}"
 end
 

end
