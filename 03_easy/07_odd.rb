require 'pry'
=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
=end

def oddities(array)
  new_array = []
  array.each_index do |i|
    new_array << array[i] if i.even?
  end
  new_array
end

def even_elements(array)
  array.select.with_index { |item, index| item if index.odd?}
end

def alternative_oddities(array)
  index = 0
  new_array = []
  return array if array.empty?

  loop do
    new_array << array[index]
    index += 2
    break if index >= array.size
  end

  new_array
end

p alternative_oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p alternative_oddities(['abc', 'def']) == ['abc']
p alternative_oddities([123]) == [123]
p alternative_oddities([]) == []

p even_elements([1, 2, 3, 4, 5]) == [2, 4]