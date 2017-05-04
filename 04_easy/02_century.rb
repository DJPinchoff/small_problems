=begin
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:
=end
def century(year)
  return "1st" if year < 101
  suffix_hash = { 0 => "th", 1 => "st", 2 => "nd", 3 => "rd", 4 => "th",
                  5 => "th", 6 => "th", 7 => "th", 8 => "th", 9 => "th"}
  last_two_digits = year % 100
  century_num = last_two_digits == 0 ? year / 100 : (year / 100) + 1
  suffix = (century_num % 100).between?(11, 13) ? "th" : suffix_hash[century_num % 10]
  century_num.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(1901) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'