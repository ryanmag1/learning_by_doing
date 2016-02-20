#! /usr/bin/exec ruby

seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_week = 7

seconds_in_hour = seconds_in_minute * minutes_in_hour
seconds_in_day = seconds_in_hour * hours_in_day
seconds_in_week = seconds_in_day * days_in_week
seconds_in_year = seconds_in_day * 365
seconds_in_20_years = seconds_in_year * 20
seconds_in_100_years = seconds_in_year * 100

puts "There are #{seconds_in_minute} seconds in a minute"
puts "There are #{minutes_in_hour} minutes in an hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"
puts 'That means there are:'
puts "There are #{seconds_in_hour} in an hour"
puts "There are #{seconds_in_day} in a day"
puts "There are #{seconds_in_week} in a week"
puts "That means when you turn 20, you've been alive for #{seconds_in_20_years} seconds"
puts "and if you make it to 100, you will have lived #{seconds_in_100_years} seconds.  Make them count!"



# Output should be:
#There are 60 seconds in a minute
#There are 60 minutes in an hour
#There are 24 hours in a day
#There are 7 days in a week
#That means there are:
#  3600 seconds in an hour,
#  86400 seconds in an day,
#  604800 seconds in a week
#That means when you turn 20, you've been alive for 628992000 seconds,
#and if you make it to 100, you will have lived 3144960000 seconds. Make them count!
