=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.
=end

CONVERT_HASH = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                 '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }

def string_to_integer(num_string)
  num_array = num_string.chars.reverse
  num_array.each_with_index do |digit, index|
    num_array[index] = CONVERT_HASH[digit]
  end
  answer = 0
  num_array.size.times do |index|
    answer += (10 ** index) * num_array[index]
  end
  answer
end

def string_to_signed_integer(string)
  if string[0] == "+" || string[0] == "-"
    answer = string_to_integer(string[1, string.size - 1])
  else
    answer = string_to_integer(string)
  end
  string[0] == "-" ? -answer: answer
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
