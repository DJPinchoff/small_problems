=begin
How big is the room?

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end
SQMETERS_TO_SQFEET = 10.7639
SQINCHES_TO_SQCENTIMETERS = 6.4516

print "What is the length of the room in meters? >>> "
length = gets.chomp.to_f

print "What is the width of the room in meters? >>> "
width = gets.chomp.to_f

area = length * width
puts "The area is #{area.round(2)} square meters (#{(area.to_f * SQMETERS_TO_SQFEET).round(2)} square feet)."

# Further Exploration

# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

puts
puts
print "What is the length in feet? >>> "
length_feet = gets.chomp.to_f

print "What is the width in feet? >>> "
width_feet = gets.chomp.to_f

area_feet = length_feet * width_feet
area_inches = area_feet * 12
area_centimeters = area_inches * SQINCHES_TO_SQCENTIMETERS

puts "The area is #{area.round(2)} sqaure feet, #{area_inches.round(2)} square inches, and #{area_centimeters.round(2)} square centimeters."