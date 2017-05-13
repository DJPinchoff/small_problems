=begin
Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.
=end

def swap_name(full_name)
  split_name_array = full_name.split
  split_name_array[1] = split_name_array[1] + ", "

  split_name_array[1] + split_name_array[0]
end

p swap_name('Joe Roberts') == 'Roberts, Joe'