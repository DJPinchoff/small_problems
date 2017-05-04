=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

def sum(int)
  (1..int).inject { |sum, num| sum + num }
end

def product(int)
  (1..int).inject { |product, num| product * num }
end

print "Please enter an integer greater than 0. >>> "
user_int = gets.chomp.to_i

s_or_p = ''
loop do
  print "Enter 's' to compute the sum, 'p' to compute the product. >>> "
  choice = gets.chomp.downcase

  if choice == 's' || choice == 'p'
    s_or_p = choice
    break
  end

  puts "That was not a valid choice. Try again!"
end

if s_or_p == 's'
  puts "The sum of the integers between 1 and #{user_int} is #{sum(user_int)}."
else
  puts "The product of the integers between 1 and #{user_int} is #{product(user_int)}."
end

