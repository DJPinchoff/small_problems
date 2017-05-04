# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

puts (1..99).select { |num| num.even? }
puts "--------"
num = 1
while num < 100
  puts num if num % 2 == 0
  num += 1
end