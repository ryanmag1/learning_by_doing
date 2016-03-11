#!/usr/bin/env ruby

@numbers = Array(1..100)
@fizz_buzz_array = ['Fizz', 'Buzz', 'FizzBuzz']

@numbers.map! { |number| number % 5 == 0 && number % 3 == 0 ? @fizz_buzz_array[2] : number }.flatten!
@numbers.map! { |number| number % 3 == 0 ? @fizz_buzz_array[0] : number }.flatten!
@numbers.map! { |number| number % 5 == 0 ? @fizz_buzz_array[1] : number }.flatten!

puts @numbers

#@number_array.each do |number|
#  fizz = (number % 3 == 0)
#  buzz = (number % 5 == 0)

#    puts case
#           when fizz && buzz then
#             'FizzBuzz'
#           when fizz then
#             'Fizz'
#           when buzz then
#             'Buzz'
#           else
#             number
#         end
#    end
# (1..100).each do |number|
#  fizz = (number % 3 == 0)
#  buzz = (number % 5 == 0)
#
#    puts case
#           when fizz && buzz then
#             'FizzBuzz'
#           when fizz then
#             'Fizz'
#           when buzz then
#             'Buzz'
#           else
#             number
#         end
#    end

