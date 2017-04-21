=begin
How Many?

Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2
=end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(v_array)
  v_hash = Hash.new(0)
  
  v_array.each { |vehicle| v_hash[vehicle] += 1 }
  
  v_hash.each { |k, v| puts k + ' => ' + v.to_s }
end

count_occurrences(vehicles)