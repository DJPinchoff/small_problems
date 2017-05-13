=begin
Write a method that can rotate the last n digits of a number. For example:

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

Input:
Int and, number correlating (negatively) to the index of digit to rotate

Output:
new int

Rules:
Digit at negative index in int gets moved to end of int


Data Structure:
array.digits.reverse

Algorithm:
Create an array of the digits in correct order
Use n_digits to find the index of that number
Create two slices from beg upto element and from after element to end
put two slices together and insert element at end
join.to_i the resulting array
=end

def rotate_rightmost_digits(num, n_digits)
  digits_array = num.digits.reverse
  element = digits_array[-n_digits]
  element_index = digits_array.index(element)

  slice1 = digits_array[0, element_index]
  slice2 = digits_array[element_index + 1..digits_array.size]

  (slice1 + slice2  << element).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917