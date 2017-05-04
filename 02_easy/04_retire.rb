=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

puts "WELCOME! Let's find out when you will retire:"
print "What is your age? >>> "
age = gets.chomp.to_i
print "At what age would you like to retire? >>> "
retirement_age = gets.chomp.to_i

years_left = retirement_age - age
todays_year = Time.new.year
retirement_year = todays_year + years_left

puts "It's #{todays_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
