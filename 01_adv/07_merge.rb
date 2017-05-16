=begin
Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.
=end

def merge(ary1, ary2)
  return ary1 if ary2.empty?
  return ary2 if ary1.empty?

  sorted_array = []
  placed_index2 = 0

  ary1.each do |element1|
    ary2.each_with_index do |element2, current_index|
      if element2 < element1
        sorted_array << element2 unless current_index < placed_index2
        placed_index2 += 1 if sorted_array.last == element2
      end
    end

    sorted_array << element1
  end

  sorted_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([1, 3, 5, 7, 9], [2, 4, 6, 8]) == [1, 2, 3, 4, 5, 6, 7, 8, 9]

p merge([3, 4, 6, 9], [1, 2, 3, 4, 5, 6, 7, 8]) == [1, 2, 3, 3, 4, 4, 5, 6, 6, 7, 8, 9]