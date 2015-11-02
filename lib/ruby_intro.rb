# Part 1

def sum arr
  sum = 0
  arr.each do |val|
    sum += val
  end
  return sum
end

def max_2_sum arr
  s = arr.sort.reverse
  result = 0
  if s.length>1 
    result = s[0] + s[1]
  elsif s.length==1 
    result = s[0]
  end
  return result
end

def sum_to_n? arr, n
  z = arr.length
  for x in 0...z
    for y in 0...z
      if x!=y 
        if (arr[x] + arr[y]) == n 
          return true
        end
      end
    end
  end
  return false
end


# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length<1 
    return false
  end
  if s.to_s[0].downcase == s.to_s[0].upcase
    return false
  end
  vowels = ["a","e","i","o","u"]
  vowels.each do |vowel|
    if s.to_s[0].downcase == vowel 
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  if s.length<1 
    return false
  end
  s.each_char do |c|
    if c!="1" and c!="0"
      return false
    end
  end
  
  if s.to_i(2)%4==0 
    return true
  end
  return false
end


# Part 3

class BookInStock
  def initialize (isbn, price)
    if isbn.length < 1 or price <= 0
      raise(ArgumentError)
    end
    @price = price
    @isbn = isbn
  end
  
  def isbn
    @isbn
  end
  
  def isbn= isbn
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price= price
    @price = price
  end
  
  def price_as_string
    return "$" + sprintf('%.2f', @price)
  end

  
end
