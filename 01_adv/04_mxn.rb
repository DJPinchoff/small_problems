=begin
In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.

Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows.

Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.

Examples:
=end


def transpose(matrix)
  new_matrix = Array.new(matrix[0].size) { Array.new }
  matrix.each_with_index do |sub_array, index|
    matrix[0].size.times do |num|
      new_matrix[num][index] = sub_array[num]
    end
  end

  new_matrix
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]