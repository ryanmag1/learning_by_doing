#1/usr/bin/env ruby


1.upto(100) { |number|

  fizz = (number % 3 == 0)
  buzz = (number % 5 == 0)

  puts case
         when fizz then
           'Fizz'
         when buzz then
           'Buzz'
         when fizz && buzz then
           'FizzBuzz'
         else
           number
       end
}
