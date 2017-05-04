=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

=end
def integer_to_string(num)
  num.digits.reverse.map { |digit| %w(0 1 2 3 4 5 6 7 8 9)[digit] }.join
end

def signed_integer_to_string(num)
  str = integer_to_string(num.abs)
  case num <=> 0
  when 1
    str.prepend("+")
  when -1
    str.prepend("-")
  else
    str
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'