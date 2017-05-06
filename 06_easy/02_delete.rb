=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
Input:
array of strings

Output:
array of strings with vowels removed

Data Structure:
use input array and create new array for output

Algorithm:
.select

Summary Sentence:
Use .select to iterate over input array and create output array using .include?.
=end

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(array)
  return_array = []
  array.each do |word|
    new_word = ""
    word.each_char do |char|
      new_word << char unless VOWELS.include?(char)
    end
    return_array << new_word
  end
  return_array
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
