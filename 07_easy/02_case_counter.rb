=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(str)
  case_count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    if LOWERCASE.include?(char)
      case_count[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end

  return case_count
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }