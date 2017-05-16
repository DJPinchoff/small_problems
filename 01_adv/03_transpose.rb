def transpose(matrix)
  new_matrix = [ [], [], [] ]
  matrix.each_with_index do |sub_array, index|
    3.times do |num|
      new_matrix[num][index] = sub_array[num]
    end
  end

  new_matrix
end



matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
