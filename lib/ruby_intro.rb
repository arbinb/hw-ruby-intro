# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.combination(2).find{|a,b| a+b==n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  message = "Hello, %s" % [name]
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^AEIOU])(?=[A-Z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.to_i == 0
    if s == "0"
      return true
    end
    return false
  elsif s.to_i % 4 == 0 
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
  
end
