=begin
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

Examples

star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

star(11)

*    *    *
 *   *   *
  *  *  *
   * * *
    ***
***********
    ***
   * * *
  *  *  *
 *   *   *
*    *    *

Input:
Integer

Output:
A print out of an 8 pointed star

Rules:
Integer is width of each string/line to be printed
There are (n * 2) - 1 strings to be printed
The nth string is a line full of n stars
Spaces " " on a row of three stars = n / 2 - 1
middle_index = n / 2 + 1
end_index = n - 1
Row 1: star at index 0, middle_index, end_index

Data Structure:


Algorithm:
Draw top of star
  -n / 2.times do something
Draw middle of star
  -puts "*" * n
Draw bottom of star
  -n / 2.times do something in reverse of top


Summary Sentence:


=end

def star(n)
  middle_index = n / 2
  end_index = n - 1

  (n / 2).times do |index|
    string = " " * n
    string[index] = "*"
    string[middle_index] = "*"
    string[end_index - index] = "*"
    puts string
  end

  puts "*" * n

  left_star = n / 2 - 1
  right_star = n / 2 + 1
  (n / 2).times do
    string = " " * n
    string[left_star] = "*"
    string[middle_index] = "*"
    string[right_star] = "*"
    left_star -= 1
    right_star += 1
    puts string
  end

end

star(7)
puts
puts
star(9)
puts
puts
star(11)
