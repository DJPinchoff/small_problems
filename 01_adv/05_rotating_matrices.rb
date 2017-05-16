=begin
As we saw in the previous exercises, a matrix can be represented in ruby by an Array of Arrays. For example:

1  5  8
4  7  2
3  9  6
can be described by the Array of Arrays:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
A 90-degree rotation of a matrix produces a new matrix in which each side of the matrix is rotated clockwise by 90 degrees. For example, the 90-degree rotation of the matrix shown above is:

3  4  1
9  7  5
6  2  8
A 90 degree rotation of a non-square matrix is similar. For example, the rotation of:

3  4  1
9  7  5
is:

9  3
7  4
5  1
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.

Input:


Output:
=end
=begin
Rules:
currently = [row][column]
changes_to = [column][something]
where something is matrix.size - row - 1

=end
def rotate90(matrix)
  new_matrix = Array.new(matrix[0].size) { Array.new }
  matrix.each_with_index do |sub_array, row|
    matrix[0].size.times do |col|
      new_matrix[col][matrix.size - row - 1] = sub_array[col]
    end
  end

  new_matrix
end

def rotate(matrix, angle)
  return rotate90(matrix) if angle == 90
  rotate(rotate90(matrix), angle - 90)
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate(matrix1, 90)
new_matrix2 = rotate(matrix2, 90)
new_matrix3 = rotate(matrix2, 360)

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2