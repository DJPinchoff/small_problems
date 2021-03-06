=begin
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.
=end

def swapcase(str)
  lowercase = 'abcdefghijklmnopqrstuvwxyz'
  uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  new_str = ''
  str.size.times do |num|
    if lowercase.include?(str[num])
      new_str << uppercase[lowercase.index(str[num])]
    elsif uppercase.include?(str[num])
      new_str << lowercase[uppercase.index(str[num])]
    else
      new_str << str[num]
    end
  end

  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'