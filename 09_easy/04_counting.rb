=begin

Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Input:
Integer

Output:
Array of Ints

Rules:
elements of array are all ints between 1 and the argument

Examples/Tests:
see below

Data Structure:


Algorithm:
initalize empty array
range(1..arg).each do |num|
  insert num into array
end
return array

Summary Sentence:
Create array to return. Iterate a range from 1 to the number and insert each one into the array. Return the array upon completion of interation.

=end

def sequence(int)
  array = []

  if int > 0
    (1..int).each do |num|
      array << num
    end
  elsif int < 0
    (1..int.abs).each do |num|
      array << -num
    end
  else
    array = [0]
  end

  array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1) == [-1]
p sequence(-5) == [-1, -2, -3, -4, -5]
p sequence(0) == [0]