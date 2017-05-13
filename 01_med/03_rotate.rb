=begin

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
=end
def rotate_rightmost_digits(num, n_digits)
  digits_array = num.digits.reverse
  element = digits_array[-n_digits]
  element_index = digits_array.index(element)

  slice1 = digits_array[0, element_index]
  slice2 = digits_array[element_index + 1..digits_array.size]

  (slice1 + slice2  << element).join.to_i
end

def max_rotation(int)
  n_digits = int.digits.size
  n_digits.times do |num|
    int = rotate_rightmost_digits(int, n_digits)
    n_digits -= 1
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845