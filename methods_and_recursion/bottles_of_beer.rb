#!/usr/bin/env ruby


number_of_beers_start = 99
new_number_of_beers = number_of_beers_start
while new_number_of_beers > 2
  puts new_number_of_beers.to_s + " bottles of beer on the wall, #{new_number_of_beers.to_s} bottles of beer."
  new_number_of_beers = new_number_of_beers -1
  puts "Take one down and pass it around, #{new_number_of_beers} bottles of beer on the wall."
puts
end

puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around, 1 more bottle of beer on the wall.'
puts
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'





# 99 bottles of beer on the wall, 99 bottles of beer.
#   Take one down and pass it around, 98 bottles of beer on the wall.
#   98 bottles of beer on the wall, 98 bottles of beer.
#   Take one down and pass it around, 97 bottles of beer on the wall.
#   97 bottles of beer on the wall, 97 bottles of beer.
#   Take one down and pass it around, 96 bottles of beer on the wall.
#   96 bottles of beer on the wall, 96 bottles of beer.
#   Take one down and pass it around, 95 bottles of beer on the wall.
#  3 bottles of beer on the wall, 3 bottles of beer.
#   Take one down and pass it around, 2 bottles of beer on the wall.
#   2 bottles of beer on the wall, 2 bottles of beer.
#   Take one down and pass it around, 1 bottle of beer on the wall.
#   1 bottle of beer on the wall, 1 bottle of beer.
#   Take one down and pass it around, no more bottles of beer on the wall.
#   No more bottles of beer on the wall, no more bottles of beer.
#     Go to the store and buy some more, 99 bottles of beer on the wall.
