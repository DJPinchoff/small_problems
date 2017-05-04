=begin
Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Input:
String with words and some non-alphabetic chars

Output:
String with non-alpha removed

Rules:
There should only be one space where non-alpha symbols were.. no consecutive spaces

Data Structure:
Array of letters

Algorithm:
Invoke chars method to return new array of chars from String
Initialize and assign a new_array = []
iterate through array.each { |char|
  if it's a letter, new_array << letter
  if it's not a letter, new_array << " " to unless array[-1] == " "
}
new_array.join

Summary Sentence:
Create a new array by iterating through an array of the chars in the String. If it's a letter, add it to new array. If not, add a " " unless the last element in the array is already a " ".

=end

def cleanup(str)
  letters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z
               A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  clean_array = []
  str.chars.each do |char|
    if letters.include?(char)
      clean_array << char
    else
      clean_array << " " unless clean_array[-1] == " "
    end
  end
  clean_array.join
end




p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("This is-- going to be (@dpinchoff's) test!?!") == 'This is going to be dpinchoff s test '