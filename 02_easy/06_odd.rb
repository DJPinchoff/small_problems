# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

100.times { |num| puts num + 1 if (num + 1).odd? }

puts (1..99).to_a.select { |num| num.odd? }

for num in (1..99)
  puts num if num.odd?
end


index = 1
loop do
  puts index if index % 2 == 1
  index += 1
  break if index == 100
end