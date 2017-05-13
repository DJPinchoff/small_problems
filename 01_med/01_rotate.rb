=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Input:
Array

Output:
New Array

Rules:
First Element rotates to last element, every other element is in order.

Algorithm:
Save first element in variable
Save slice from second element to end new_array.
Push first element onto new_array and return
=end


def rotate_array(array)
  array.slice(1..array.size).push(array[0])
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true