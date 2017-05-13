=begin

Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

Input:
String

Output:
Array of each word from string

Rules:
String should be appended with a " " and length of the word

Data Structure:
Build array and insert string with "appendages"

Algorithm:
initialize array
iterate through split array of string
  -insert string appended with " #{string.size}"
return array

Summary Sentence:
Build a new array by iterating through each word in string and adding its length to the string.

=end

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []