=begin
Odd

Write a method that takes one argument in the form of an integer or a float; this argument may be either positive or negative. This method should check if a number is odd, returning true if its absolute value is odd. You may assume that only integers are passed in as arguments.

Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
Keep in mind that you're not allowed to use #odd? or #even? in your solution.
=end

def is_odd?(num)
  return false if num % 2 == 0
  true
end

puts is_odd?(2)    
puts is_odd?(5)    
puts is_odd?(-17)  
puts is_odd?(-8)

#Now for further exploraion with a remainder function instead of modulus (which returns negative numbers if supplied number is negative.)
puts
def is_odd2?(num)
  num.abs.remainder(2) == 1
end
puts is_odd2?(2)    
puts is_odd2?(5)    
puts is_odd2?(-17)  
puts is_odd2?(-8)
