=begin
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
=end

def century(year)
  century_string = ''
  century_int = year / 100
  century_int += 1 if year % 100 != 0
  century_string << century_int.to_s

  suffix = if [11, 12, 13].include?(century_int % 100)
    'th'
  else
    case century_int % 10
    when 1
      'st'
    when 2
      'nd'
    when 3
      'rd'
    else
      'th'
    end
  end

  century_string << suffix
end

p century(2001) == '21st'
p century(1965) == '20th'
p century(2000) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'