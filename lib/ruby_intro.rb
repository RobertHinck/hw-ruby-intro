# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    0
  elsif arr.length() == 1
    arr[0]
  else
    arr.sort!
    arr[arr.length() - 1] + arr[arr.length() - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() == 0 || arr.length() == 1
    false
  else
    for i in 0..arr.length()-1
      for j in 0..arr.length()-1
        if i == j 
          next
        end
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end 
  
  if !s[0].match(/^[[:alpha:]]$/)
    return false
  end 
  
  if s[0] == "a" || s[0] == "A" || s[0] == "e" || s[0] == "E" || s[0] == "i" || s[0] == "I" || s[0] == "o" || s[0] == "o" || s[0] == "u" || s[0] == "U" 
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if !s.scan(/\D/).empty?
    return false
  end 
  
  if s.length == 0
    return false
  else
    return  s[s.length-1] == "0" && s[s.length-2] == "0" || s == "0"
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("Not valid number") if isbn == ""
    raise ArgumentError.new("Not valid number") if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end 
  
  def isbn=(isbn) 
    @isbn = isbn 
  end 
  
  def price 
    @price 
  end 
  
  def price=(price) 
    @price=price 
  end 
  
  def price_as_string
    p = '%.2f' % @price
    "$" + p
  end
end
