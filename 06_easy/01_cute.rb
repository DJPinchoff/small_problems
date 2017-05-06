require 'pry'
=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes, and seconds. You should use a degree symbol (˚) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.


Input:
Float number

Output:
String

Rules:
String represents float number as angle with:
angle (degrees), minutes ('), seconds (")

Data Structure:
Store math on float into local variables
Build a String using rules

Algorithm:
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

degrees = float.to_i
Then use modulo on each step to get next step's answer. Careful of ints vs float
Format string.

Summary Sentence:
Using modulo, build a string from float.

=end

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
DEGREE = "\xC2\xB0"

def dms(float)
  degrees, min, sec = 0, 0, 0, 0
  degrees = float.to_i
  min_float = (float % degrees) * MINUTES_PER_DEGREE unless degrees == 0
  min = min_float.to_i if min_float
  sec_float = (min_float % min) * SECONDS_PER_MINUTE unless min == 0
  sec = sec_float.to_i if sec_float
  format(%(#{degrees}#{DEGREE}%02d'%02d"), min, sec)
end


puts dms(362)
puts dms(30) #== %(30°00'00")
puts dms(76.73)# == %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773)# == %(93°02'05")
puts dms(0)# == %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")