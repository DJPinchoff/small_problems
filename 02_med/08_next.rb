=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

Input:
Integer of a number

Output:
Next "featured" number

Rules:
-num.odd?
-num % 7 == 0
-digits are unique

Algorithm:
loop.. increment number... check rules... return if all rules are met...
=end
WARNING = "No featured number exists above given number."

def featured(int)
  int += 1
  loop do
    return int if int.odd? && int % 7 == 0 && int.digits.uniq == int.digits
    int % 7 == 0 ? int += 7 : int += 1
    return WARNING if int.digits.size > 10
  end
end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
time1 = Time.now
p featured(999_999_987) == 1_023_456_987
time2 = Time.now
p time2 - time1
# p featured(9_999_999_999) == WARNING