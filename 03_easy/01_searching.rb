=begin
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].
=end

number_array = []
index_array = ['1st', '2nd', '3rd', '4th', '5th']

5.times do |index|
  print "Enter the #{index_array[index]} number: "
  number_array << gets.chomp.to_i
end

print "Enter one more number: "
input = gets.chomp.to_i

puts "The number #{input} #{number_array.include?(input) ? "appears" : "does not appear"} in #{number_array}."