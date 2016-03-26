#!/usr/bin/env ruby

@numbers = Array(1..100)
@fizz_buzz_array = ['Fizz', 'Buzz', 'FizzBuzz']

@numbers.map! do |number|
  case
    when number % 5 == 0 && number % 3 == 0 then
      @fizz_buzz_array[2]
    when number % 3 == 0 then
      @fizz_buzz_array[0]
    when number % 5 == 0 then
      @fizz_buzz_array[1]
    else
      number
  end
end

puts @numbers
