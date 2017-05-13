=begin
Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
=end


def balanced?(str)
  open_par_count = 0
  close_par_count = 0

  str.chars.each do |char|
    open_par_count += 1 if char == '('
    close_par_count += 1 if char == ')'
    return false if close_par_count > open_par_count
  end

  open_par_count == close_par_count ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).