=begin
Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.
The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

=end

puts "Enter the name of the text file to check for its longest sentence:"
file = gets.chomp
string = File.read "#{file}"
string.gsub!("\n", " ")
char_array = string.chars
sentence = ''
sentences_array = []

char_array.each do |char|
  sentence << char
  if char == "." || char == "!" || char == "?"
    sentences_array << sentence
    sentence = ''
  end
end

answer = [sentences_array[0], sentences_array[0].split.size]

sentences_array.each do |sentence_element|
  if sentence_element.split.size >= answer[1]
    answer[0] = sentence_element
    answer[1] = sentence_element.split.size
  end
end

puts answer[0]
puts "The sentence has #{answer[1]} words in it."

#LS Solution:  I REALLY need to read the Regex Book!
# text = File.read('frakenstein.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"