=begin
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.
=end
LOWER = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPER = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def trim(num)
  int, float = num.to_i, num.to_f
  int == float ? int : float
end

def letter_percentages(str)
  total_chars = str.size
  total_lower, total_upper, total_neither = 0.0, 0.0, 0.0

  str.chars.each do |char|
    if LOWER.include?(char)
      total_lower += 1
    elsif UPPER.include?(char)
      total_upper += 1
    else
      total_neither += 1
    end
  end

  percent_lower = trim((total_lower / total_chars) * 100)
  percent_upper = trim((total_upper / total_chars) * 100)
  percent_neither = trim((total_neither / total_chars) * 100)

  { lowercase: percent_lower, uppercase: percent_upper,
    neither: percent_neither }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }