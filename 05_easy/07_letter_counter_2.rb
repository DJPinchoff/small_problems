=begin
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

Input:
String with space separated words and perhaps symbols like apostrophes and bangs!

Output:
hash {word.size => number of words that size)

Rules:
word.size needs to only count alphabetical chars

Examples/Tests:
See below test cases.

Data Structure:
array of alphabet letters
array of words from string
array of chars from words
create new hash

Algorithm:
Initialize new hash with default value of 0.
Split string into array of words and iterate
  -Create counter
  -Split chars of word into array and iterate
    -Increment counter if char is in alphabet
  -Add number of letter count to hash and increment its value.
Return hash

Summary Sentence:
Split the string into words, then chars. Iterate over each, counting the chars that are letters and putting that count into the initalized default 0 value hash... Increment its value.
=end

ALPHABET = ("a".."z").to_a + ("A".."Z").to_a

def word_sizes(str)
  hash = Hash.new(0)
  str.split.each do |word|
    count = 0
    word.chars.each do |char|
      count += 1 if ALPHABET.include?(char)
    end
    hash[count] += 1
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
