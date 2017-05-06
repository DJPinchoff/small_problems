=begin
Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

Input:
string

Output:
Five Strings

Rules:
Top line = "+-(length of string)-+"
Second line = "/#{" "} (length of string) space/"
Third line = "/ STRING /"
Fourth line = Second line
Last line = Top line

Data Structure:
Three Strings according to rules
=end



def print_in_box(str)
  length = str.length
  string1 = "+-" + "-" * length + "-+"
  string2 = "| " + " " * length + " |"
  string3 = "| "  + str + " |"
  puts string1
  puts string2
  puts string3
  puts string2
  puts string1
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
