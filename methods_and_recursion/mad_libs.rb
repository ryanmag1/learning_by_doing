#!/usr/bin/env ruby

# Prompt user for madlib input and populates parsed strings for output
class MadLibParser
  def initialize
    @input_string = 'A vacation is when you take a trip to some -- place with'\
    ' your -- family. Usually you go to some place that is near a/an -- or'\
    ' up on a/an --. A good vacation place is one where you can ride -- or'\
    ' play -- or go hunting for --. I like to spend my time -- or --.'\
    ' When parents go on a vacation, they spend their time eating three -- a'\
    ' day, and fathers play golf, and mothers sit around --. Last summer, my'\
    ' little brother fell in a/an -- and got poison -- all over his --. My'\
    ' family is going to go to (the) --, and I will practice --. Parents'\
    ' need vacations more than kids because parents are always very -- and'\
    ' because they have to work -- hours every day all year making'\
    ' enough -- to pay for the vacation.'
  end

  def parse_madlib
    @input_array = []
    @input_string.scan('--').flatten
  end

  # Takes user input and adds to to array @input array
  def take_input_add_to_array(number_of_blanks = 0)
    value = gets.chomp
    @input_array.push value
    take_input_add_to_array(number_of_blanks + 1) if number_of_blanks < 18
  end

  # Sub place holders with elements of the array @input_array
  def print_output(array_value = 0)
    @input_string.sub!('--', @input_array [array_value])
    print_output(array_value + 1) if array_value < 18
  end

  # prints the completed mad lib to the screen
  def print_string
    puts @input_string
  end
end

do_ml = MadLibParser.new
do_ml.parse_madlib
do_ml.take_input_add_to_array
do_ml.print_output
do_ml.print_string
