#1/usr/bin/env ruby


1.upto(100) { |number|

  fizz = (number % 3 == 0)
  buzz = (number % 5 == 0)

  puts case
         when fizz then
           'fizz'
         when buzz then
           'buzz'
         when fizz && buzz then
           'fizzbuzz'
         else
           number
       end
}












1.upto(100) do |bob|
puts bob
end

1.upto(100) do |i|
  fizz = (i % 3 == 0)
  buzz = (i % 5 == 0)
  puts case
         when fizz && buzz then 'FizzBuzz'
         when fizz then 'Fizz'
         when buzz then 'Buzz'
         else i
       end
end








#There is a common interview question called FizzBuzz. For this homework assignment, implement FizzBuzz.
#  Create a program called "fizz_buzz.rb"
#This program should output the numbers 1 through 100, however:
#  If evenly divisible by 3, print Fizz
#If evenly divisible by 5, print Buzz
#If evenly divisible by 3 and 5, print FizzBuzz
#Otherwise, print out the number
#
