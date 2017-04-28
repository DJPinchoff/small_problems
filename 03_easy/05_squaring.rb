=begin
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

Example:

square(5) == 25
square(-8) == 64
=end
def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, n)
  answer = num
  (n - 1).times { answer = multiply(answer, num) }
  answer
end
p power_to_the_n(3, 3)