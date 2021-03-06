# When done, submit this entire file to the autograder.

# Part 1

def sum array
  sum = 0

  for num in array
    sum += num
  end

  return sum
end

def max_2_sum arr
  first = second = -99999999
  
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    for num in arr
      if num > first 
        second = first
        first = num
      elsif num > second
        second = num
      end
    end
  end

  return first + second
end

def sum_to_n? arr, n
  arr = arr.sort
  left_i = 0
  right_i = arr.length()-1

  while left_i < right_i
    if arr[left_i] + arr[right_i] == n
      return true
    elsif arr[left_i] + arr[right_i] < n
      left_i += 1
    else
      right_i -= 1
    end
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s

  if s.empty? || !s.match(/^[[:alpha:]]+$/)
    return false
  end

  s = s.downcase
  vowels = ['a', 'e', 'i', 'o', 'u']

  for vowel in vowels
    if s[0] == vowel
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  if !s.match(/^[01]+/)
    return false
  end
  if s.to_i(2) % 4 == 0
    return true
  end

  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <= 0.0
      raise ArgumentError.new("Invalid price")
    elsif isbn.empty?
      raise ArgumentError.new("Invalid ISBN")
    end
    @isbn = isbn
    @price = price
  end

  #getters
  def isbn
    @isbn
  end
  def price
    @price
  end

  #setters
  def isbn=(isbn) 
    @isbn = isbn 
  end
  def price=(price) 
    @price = price 
  end

  #methods
  def price_as_string
    return "$" + '%.2f' % @price
  end
  
end
