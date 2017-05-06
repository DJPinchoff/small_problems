require 'pry'
=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.
Input:
Array

Output:
Reversed array

Rules:
Can't use .reverse or .reverse!
Must return mutated original array object

Data Structure:
new_array for storing values
input_array for mutating values

Algorithm:
initialize new_array = []
iterate over input array and unshift element to new_array
iterate over new_array with index and reassign input_array[index] element
return input_array

Summary Sentence:
Take a new_array and .unshift values from input array. then iterate through input array and reassign each index to the value in the new_array

=end
def reverse!(list)
  new_array = []
  list.each do |element|
    new_array.unshift(element)
  end
  new_array.each_with_index do |v, i|
    list[i] = v
  end
  list
end


list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []