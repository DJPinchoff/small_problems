=begin
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Input:
Array of arrays [[fruit_string, quantity]]

Output:
Flat array with fruit_string printed quantity times

Data Structure:
Create new array and build it from there

Algorithm:
initialize new list_array
iterate over array to get sub_array elements
  -insert sub_array[0] into list_array within a sub_array[1].times block 
  -end times
-end each
return list_array
-end def

Summary Sentence:
Insert the fruit element of each subarray into a new array however by going into a times loop based on the quantity listed in the subarray.
=end

def buy_fruit(array)
  list_array = []
  array.each { |sub_arr| sub_arr[1].times { |_| list_array << sub_arr[0] } }
  list_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]