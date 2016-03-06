#!/usr/bin/env ruby

def number_of_beers(number = 99)
  return buy_more_beer if number == 0
  print_lyrics(number)
  number_of_beers(number - 1)
end

def print_lyrics(number)
  bottle = bottle_or_bottles(number)
  puts number.to_s + " #{bottle} of beer on the wall, #{number} #{bottle} of beer."
  puts "Take one down and pass it around, #{number} #{bottle} of beer on the wall."
  puts
end

def bottle_or_bottles(number)
  if number > 1
    'bottles'
  else
    'bottle'
  end
end

def it_one_method(number)
  if number > 1
    'one'
  else
    'it'
  end
end

def buy_more_beer
  puts 'No more bottles of beer on the wall, no more bottles of beer.'
  puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
end

number_of_beers
