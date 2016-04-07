#!/usr/bin/env ruby

@numbers = Array(1..100)
@numbers.map! do |number|

  case
    when number % 5 == 0 && number % 3 == 0
      'FizzBuzz'
    when number % 3 == 0
      'Fizz'
    when number % 5 == 0
      'Buzz'
    else
      number
  end
end

puts @numbers

