require 'pry'
=begin
Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

=end

def halvsies(array)
  halfway_index = array.size.odd? ? array.size / 2 : array.size / 2 - 1
  [array[0..halfway_index], array[halfway_index + 1..array.size - 1]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1, 2, 3, 4, 5, 6]) == [[1, 2, 3], [4, 5, 6]]