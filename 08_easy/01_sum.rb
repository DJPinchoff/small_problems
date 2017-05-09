=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Input:
array of numbers

Output:
Integer of sum of each sequence of numbers in the array

Data Structure:
create a sum of each sequence... then add each sum together

Algorithm:
Initialize a new_array
Iterate through original array
  -new_array << slice of index 0, 1
  -new_array << slice of index 0, 2
  -new_array << slice of index 0, size
sum = 0
Flatten new_array, iterate through and add up all of its numbers
return sum

Summary Sentence:
Iterate through original array to create a new array full of each sequence. Then sum up the new array.

=end

def sum_of_sums(arr)
  sequences = []
  arr.each_with_index do |_, index|
    sequences << arr[0, index + 1]
  end
  sum = 0
  sequences.flatten.each do |num|
    sum += num
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

