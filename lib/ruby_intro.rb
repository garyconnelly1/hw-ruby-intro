# When done, submit this entire file to the autograder.

# Part 1

#######################################################
# A.
def sum arr
  count = 0 ## Initialize a Counter to 0.
  arr.each {
    |x| count += x ## For each x in the integer array, add that onto the counter.
  }
  return count ## Return the final count value.
end


#######################################################
# B.
def max_2_sum arr ## Adapted from - https://ruby-doc.org/core-2.2.0/Array.html.
  return arr.sort.last(2).sum  ## This function sorts the array, gets a handle on the last 2 values and sums them.
end


########################################################
# C.
def sum_to_n? arr, n
  arr.to_a
  count = 0 ## Initialize a counter to 0.
 for i in 0.. arr.length - 1 do ## For the range of 0 to the lenght of the array - 1 inclusive.
   for j in i + 1 .. arr.length - 1 do ## For the range of i + 1 to the lenght of the array - 1 inclusive.
     if arr[i] + arr[j] == n ## If the sum of the values at index i and j equals parameter n.
       count += 1 ## Increment the counter.
     end
   end
 end
 
 if count == 0 ## If the counter has not been incremented.
   return false ## Return false because none of the sums equated to n.
 else
   return true ## Return true because at least one of the sums equated to 2.
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
def starts_with_consonant? s ## Adapted from https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285.
 if s =~ /\A(?=[^aeiou])(?=[a-z])/i ## If the string entered matches the regular expression.
   return true ## If it does match, return true.
 else 
   return false ## If it does not match, return false.
 end
 
end

#######################################################
# B.
def binary_multiple_of_4? s
 
 return true if s == "0" ## Return true if the string equals "0"
 /^[10]*00$/.match(s) != nil ## Or if it starts with "1"/"0" and ends in "00"(meaning it is divisible by four).
 
end

# Part 3
#######################################################
# A.
class BookInStock
	def initialize(isbn,price) ## Create the constructor.
		@isbn=isbn ## Initialize a local variable(@isbn) to isbn parameter.
		@price=price ## Initialize a local variable(@price) to price parameter.
		# exeption 
		if @isbn.empty? || @price <= 0 ## If @isbn is empty or if @price is less than 0.
			raise ArgumentError ## Raise an argument error.
		end
	end
	
	attr_accessor :isbn ## Accessor method for @isbn local variable.
	attr_accessor :price ## Accessor method for @price local variable.

	def price_as_string
		"$#{'%.2f' %  self.price}" ## Return the value returned from the price accessor, as a string.
	end

end
