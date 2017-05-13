=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Input:
str

Output:
true or false

Rules:
If two letters on the same block are used in a word, return false.
Otherwise, true

Data Structure:
hash mapping each char to its corresponding char

Algorithm:
answer = true
iterate through the chars of the word
  -if word.include(hash[char]) answer = false
end
return answer

Summary Sentence:
Iterate through each char in the word, make sure the word doesn't include the corresponding letter for the char you are checking.
=end

BLOCK_HASH = { B: 'O', X: 'K', D: 'Q', C: 'P', N: 'A', G: 'T', R: 'E', F: 'S',
               J: 'W', H: 'U', V: 'I', L: 'Y', Z: 'M', O: 'B', K: 'X', Q: 'D',
               P: 'C', A: 'N', T: 'G', E: 'R', S: 'F', W: 'J', U: 'H', I: 'V',
               Y: 'L', M: 'Z' }

def block_word?(word)
  word.chars.each do |char|
    if word.upcase.include?(BLOCK_HASH[char.upcase.to_sym]) ||
       word.count(char) >=2
      return false
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BLOG') == false
p block_word?('NEED') == false # two of the same letter doesn't work either