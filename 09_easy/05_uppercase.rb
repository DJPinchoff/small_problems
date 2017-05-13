=begin
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.
=end

LETTERS = 'abcdefghijklmnopqrstuvwxyz'

def uppercase?(str)
  boolean = true
  boolean = false if str == ''

  str.chars.each do |char|
    if LETTERS.include?(char.downcase)
      boolean = false if LETTERS.include?(char)
    else
      next
    end
  end

  boolean
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == false