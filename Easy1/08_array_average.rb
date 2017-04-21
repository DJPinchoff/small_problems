=begin
Array Average

Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
The tests above should print true.
=end

def average(int_array)
  l = int_array.length
  total = 0
  int_array.each do |e|
    total += e
  end
  total / l
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin
Further Exploration

Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float. Can you change the return value of average from an Integer to a Float?
=end

def average2(int_array)
  l = int_array.length
  total = 0
  int_array.each do |e|
    total += e
  end
  total.to_f / l.to_f
end

puts average2([1, 5, 87, 45, 8, 8]).round(2) == 25.67
puts average2([9, 47, 23, 95, 16, 52]).round(2) == 40.33