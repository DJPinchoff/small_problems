=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.
=end

def greetings(array, hash)
  greeting_string = ""
  greeting_string << "Hello, "
  array.size.times do |num|
    greeting_string << array[num]
    greeting_string << " " unless num == array.size - 1
  end

  greeting_string << "! Nice to have a #{hash[:title]} "
  greeting_string << "#{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
p greetings(['Dave', 'Pinchoff'],
            { title: 'Veteran', occupation: 'Music Educator' })