=begin
Write a method that takes a string, and returns a new string in which every character is doubled.
=end

def repeater(str)
  new_str = ''
  str.size.times { |index| new_str << str[index] * 2 }
  new_str
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''