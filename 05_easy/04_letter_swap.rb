=begin

Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Input:
String with words and spaces

Output:
String with first char of every word swapped with last char of every word

Rules:
Contains at least one word and every word has at least one letter

Examples/Tests:
See below test cases.

Data Structure:
Convert words into array. Then join it back after transformation.

Algorithm:
array = string.split(" ")
array.each do |word|
  temp = word[0]
  word[0] = word[-1]
  word[-1] = temp
end
array.join

Summary Sentence:
Convert string to array of words. Place first char in temporary variable, swap last char into first char index, put temp variable into last char index, then join all words again.
=end

def swap(string)
  words_array = string.split(" ")
  words_array.each do |word|
    # temp = word[0]
    # word[0] = word[-1]
    # word[-1] = temp
    word[0], word[-1] = word[-1], word[0]
  end
  words_array.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'