=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

Input:
String with a bunch of double letters

Output:
String with a letters that are the same next to it turned into one letter

Data Structure:
Array of chars of String
New Array of chars for new string

Algorithm:
Initialize crunch_array
Iterate over char array of String
Add char to crunch_array if [-1] isn't == to char
end
return crunch_array.join

Summary Sentence:
Iterate over chars of the string and push it onto a new array unless it's the last element.
=end

def crunch(str)
  crunch_array = []
  str.chars.each { |char| crunch_array << char unless crunch_array[-1] == char }
  crunch_array.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''