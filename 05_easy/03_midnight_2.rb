require 'pry'
=begin
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Input:
String representing Time of Day

Output:
Integer representing minutes before or after midnight

Rules:
Output will be 0..1439

Examples/Tests:
See below cases

Data Structure:
local variables and CONSTANTS
MINUTES_PER_DAY = 60 * 24

Algorithm:
Parse String to hour and minutes variables
Convert to Ints
minutes_of_hours = hour * MINUTES_PER_HOUR
total_minutes = minutes_of_hours + minutes
if after midnight
  total_minutes
if before midnight
  MINUTES_PER_DAY - total_minutes
if total_minutes == 0 || total_minutes == MINUTES_PER_DAY
  0

Summary Sentence:
Parse time string and convert to total minutes it would be in a day. Then subtract from total minutes in a day or leave it alone if it's after midnight. If it's 0 or a day, then return 0.

=end
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 60 * 24

def after_midnight(time_string)
  hours, minutes = time_string.split(":")
  hours = hours.to_i
  minutes = minutes.to_i
  minutes_of_hours = hours * MINUTES_PER_HOUR
  total_minutes = minutes_of_hours + minutes
  return total_minutes unless total_minutes == 0 ||
                              total_minutes == MINUTES_PER_DAY
  0
end

def before_midnight(time_string)
  total_minutes = after_midnight(time_string)
  return 0 if total_minutes == 0
  MINUTES_PER_DAY - total_minutes
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0