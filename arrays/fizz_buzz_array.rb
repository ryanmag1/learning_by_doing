#!/usr/bin/env ruby

(1..100).each do |number|
  fizz = (number % 3 == 0)
  buzz = (number % 5 == 0)

    puts case
           when fizz && buzz then
             'FizzBuzz'
           when fizz then
             'Fizz'
           when buzz then
             'Buzz'
           else
             number
         end
    end

