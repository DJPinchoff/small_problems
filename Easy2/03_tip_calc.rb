=begin
Tip calculator

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

puts "Welcome to Tip Calculator!"
print "What is the bill amount? >>> "
bill = gets.chomp.to_f

print "What is the tip percentage? >>> "
percent = gets.chomp.to_f / 100

tip_amount = (bill * percent).round(2)
bill_total = (bill + tip_amount).round(2)

puts "The tip is #{format("$%.2f", tip_amount)}"
puts "the total is #{format("$%.2f", bill_total)}"
