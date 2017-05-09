=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
Input:


Output:


Rules:


Examples/Tests:


Data Structure:


Algorithm:


Summary Sentence:

=end

def interleave(arr1, arr2)
  array = []
  arr1.size.times do |num|
    array.push(arr1[num])
    array.push(arr2[num])
  end
  array
end

def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']