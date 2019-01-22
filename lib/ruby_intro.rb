# When done, submit this entire file to the autograder.

# Part 1

#######################################################
# A.
def sum arr
  count = 0
  arr.each {
    |x| count += x
  }
  return count
end


#######################################################
# B.
def max_2_sum arr
  return arr.sort.last(2).sum
  
end


########################################################
# C.
def sum_to_n? arr, n
  arr.to_a
  count = 0
 for i in 0.. arr.length - 1 do
   for j in i + 1 .. arr.length - 1 do
     if arr[i] + arr[j] == n
       count += 1
     end
   end
 end
 
 if count == 0
   return false
 else
   return true
 end
  
end
#######################################################

#######################################################

# Part 2

#######################################################
# A.
def hello(name)
  return "Hello, #{name}"
end


#######################################################
# B.
def starts_with_consonant? s
 if s =~ /\A(?=[^aeiou])(?=[a-z])/i
   return true
 else 
   return false
 end
 
end

#######################################################
# B. SKIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIPPPPPPPPPPPP
def binary_multiple_of_4? s
 
 return true if s == "0"
 /^[10]*00$/.match(s) != nil
 
end

# Part 3
#######################################################
# A.
class BookInStock
	def initialize(isbn,price)
		@isbn=isbn
		@price=price
		# exeption 
		if @isbn.empty? || @price <= 0 
			raise ArgumentError
		end
	end
	
	attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		"$#{'%.2f' %  self.price}"
	end

end
