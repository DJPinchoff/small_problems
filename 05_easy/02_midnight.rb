
require 'pry'
=begin
The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Input:
Integer representing minutes before/after midnight

Output:
String "hh:mm"

Rules:
Calculate what 24 hour time it will be if you start at midnight and add the integer representing minutes given. The integer could be positive or negative.

Examples:
See test cases below code.

Data Structures:
Use the given int.
Use #format to format the string after proper calculations
Use div and modulo... or divmod.

Algorithm:
60 (min/hour) * 24 (hour/day) = minutes_in_a_day
days, total_minutes = int.divmod(minutes in a day)
if total_minutes > 0
  hour, minutes = total_minutes.divmod(60)
elsif total_minutes < 0
  hour, minutes = (minutes_in_a_day + total_minutes).divmod(60)
else
  return "00:00"
end

Use format to convert hour, minutes to "hh:mm"

"%02d:%02d" [hour, minutes]

Abstraction:
Take given int of minutes before and after midnight and, using div and mod, get rid of days. If it is a positive number, get hours and minutes with another div mod and convert to string using format. If it is negative, subtract that number of minutes_in_a_day and then proceed as normal. If 0, its "00:00"

Disregard Daylight Savings and Standard Time and other complications.
=end
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY
SECONDS_IN_MINUTE = 60

def time_of_day(int)
  total_minutes = int % MINUTES_IN_DAY
  hour, minutes = total_minutes.divmod(60)
  "%02d:%02d" % [hour, minutes]
end

def time_of_day_extra(int)
  time = Time.new(2017, 5, 7)
  total_seconds = int * SECONDS_IN_MINUTE
  current_time = time + total_seconds
  day = current_time.strftime("%A")

  puts day + " " + time_of_day(int)
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

time_of_day_extra(0) #== "00:00"
time_of_day_extra(-3) #== "23:57"
time_of_day_extra(35) #== "00:35"
time_of_day_extra(-1437)# == "00:03"
time_of_day_extra(3000) #== "02:00"
time_of_day_extra(800) #== "13:20"
time_of_day_extra(-4231)# == "01:29"