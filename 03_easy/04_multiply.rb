=begin
Create a method that takes two arguments, multiplies them together, and returns the result.

Example:

multiply(5, 3) == 15
=end

def multiply(a, b)
  a * b
end

p multiply(5, 3) == 15

p multiply(%w(happy birthday), 2)