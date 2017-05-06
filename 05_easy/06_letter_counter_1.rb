=begin
Input:
-String with one or more space separated words

Output:
-Hash: {word.size => number of words that size }

Rules:
-Words are a length of string chars that do not include a space.

Examples/Tests:
See test cases below.

Data Structure:
Split words into an array.
Iterate and count how many chars in each string.
Return a hash built from iteration of array.

Algorithm:
define method
string into new array of split words.
initialize hash with default values of 0
Iterate through each element.
  -add word.size as key if it doesn't already exist
  -increment value by one
Return hash

Summary Sentence:
Split string into a word array. Iterate through word array and put its word.size into hash, unless it already exists. then just increment its value.
=end

def word_sizes(str)
  hash = Hash.new(0)
  str.split.each do |word|
    hash[word.size] += 1
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}