def transpose!(matrix)
  matrix.size.times do |index1|
    index2 = matrix.size - 1
    loop do
      break if index2 < index1
      matrix[index1][index2], matrix[index2][index1] = matrix[index2][index1], matrix[index1][index2]
      index2 -= 1
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
transpose!(matrix)
p matrix == [[1, 4, 3],
             [5, 7, 9],
             [8, 2, 6]]

matrix = [[1, 2, 3, 4, 5],
          [2, 3, 4, 5, 1],
          [3, 4, 5, 1, 2],
          [4, 5, 1, 2, 3],
          [5, 1, 2, 3, 4]]
transpose!(matrix)
p matrix == [[1, 2, 3, 4, 5],
            [2, 3, 4, 5, 1],
            [3, 4, 5, 1, 2],
            [4, 5, 1, 2, 3],
            [5, 1, 2, 3, 4]]