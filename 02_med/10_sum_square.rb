=begin
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
=end

def sum_square_difference(n)
  square_of_sums = 1.upto(n).inject(:+) ** 2
  sum_of_squares = 0

  for num in (1..n)
    sum_of_squares += num ** 2
  end

  square_of_sums - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150