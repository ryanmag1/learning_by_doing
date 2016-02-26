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
