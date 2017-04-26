=begin
Give us your feedback
How old is Teddy?

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

Teddy is 69 years old!
=end

# puts "Teddy is #{rand(20..200)} years old!"

=begin
Further Exploration

Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.
=end

print "Give me a name: >>> "
name = gets.chomp
name = "Teddy" if name.empty?
puts "#{name} is #{rand(20..200)} years old!"