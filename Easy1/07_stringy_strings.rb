=begin
Stringy Strings

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.
=end

def stringy(int)
  str = '1'
  count = 1
  while count < int
    if count.odd? then str += '0' else str += '1' end
    count += 1
  end
  p str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#further exploration: if optional argument = 0, then start string with 0 and alternate with 1s

def stringy2(int, *zero)
  str = ''
  if zero == [0] then str += '0' else str += '1' end
  int.times do |n|
    if n > 0
      array = str.chars
      if array[n - 1] == '0' then str += '1' else str += '0' end
    end
  end
  p str
end

puts stringy2(6, 0) == '010101'
puts stringy2(9, 0) == '010101010'
puts stringy2(4, 0) == '0101'
puts stringy2(7, 0) == '0101010'
