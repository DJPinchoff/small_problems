=begin
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
=end

def get_grade(score1, score2, score3)
  grade_hash = { 100 => "A", 90 => "A", 80 => "B", 70 => "C", 60 => "D"}
  grade_hash.default = "F"

  average = (score1 + score2 + score3) / 3
  key = (average / 10) * 10
  grade_hash[key]
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(50, 50, 50) == "F"