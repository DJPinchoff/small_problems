=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Input:
Three Integers representing sides of a triangle

Output:
symbol representing type of triangle or invalid input

Rules:
-sum of two shortes sides > length of longest side
-all sides are > 0

Data Structure:
Array of Sides, sorted from smallest to largest

Algorithm:
initialize array of sides and sort it
initialize variable to the sum of the shortest sides
if elsif else each case with a return value... start with invalid based on rules.


Summary Sentence:


=end

def triangle(a, b, c)
  side_array = [a, b, c].sort
  sum_of_shortest_sides = side_array[0] + side_array[1]

  if (a == 0 || b == 0 || c == 0) || sum_of_shortest_sides <= side_array[2]
    return :invalid
  elsif a == b && b == c
    return :equilateral
  elsif a != b && b != c && a != c
    return :scalene
  elsif a == b || b == c || a == c
    return :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid