#!/usr/bin/env ruby

# Notes:

# Didn't want to hard code the input string,
# but couldn't get travis to pass with a relative string.
# Also didn't want to have madlib text in my ruby file

# Class prompt user for mad lib input and populate parsed strings for output
class MadLibParser
# def initialize(input = "./madlib_vacation.txt")
  def initialize(input = '/Users/ryanmagee/workspace/davinci_coders_t1_2016/homework/learning_by_doing/methods_and_recursion/madlib_vacation.txt')
    @input_array = []
    @parsed_inputs = parse(input)
    if File.file?(input)
      ml_from_file = File.open(input)
      @input_string = ml_from_file.read
    else
      @input_string = 'Mad Lib input file wasn\'t found'
      return @input_string
    end
  end

  def take_input_add_to_array(number_of_blanks = 0)
    value = gets.chomp
    @input_array.push value
    take_input_add_to_array(number_of_blanks + 1) if number_of_blanks < 18
  end

  def parse(input)
    if File.file?(input)
      madlib_text = File.open(input)
      madlib_text.read.scan('__________________').flatten
    end
  end

  def print_output(array_value = 0)
    @input_string.sub!('__________________', @input_array [array_value])
    print_output(array_value + 1) if array_value < 18
  end

  def print_string
    puts @input_string
  end
end

start = MadLibParser.new
start.take_input_add_to_array
start.print_output
start.print_string

# Below works for simply prompting for input in the string. Too simple
# def mad_libs
#  puts 'A vacation is when you take a trip to some ' + gets.chomp + ' place with your ' + gets.chomp + ' family. Usually you go to some place that is near a/an ' + gets.chomp + ' or up on a/an ' + gets.chomp + '. A good vacation place is one where you can ride ' + gets.chomp + '
#   or play ' + gets.chomp + ' or go hunting for ' + gets.chomp + '. I like to spend my time ' + gets.chomp + ' or ' + gets.chomp + '.
#     When parents go on a vacation, they spend their time eating three ' + gets.chomp + ' a day, and fathers play golf, and mothers sit around ' + gets.chomp + '. Last summer, my little brother fell in a/an ' + gets.chomp + ' and got poison ' + gets.chomp + ' all
#   over his ' + gets.chomp + '. My family is going to go to (the)
#   ' + gets.chomp + ', and I will practice ' + gets.chomp + '. Parents
#   need vacations more than kids because parents are always very
#   ' + gets.chomp + ' and because they have to work ' + gets.chomp + '
#   hours every day all year making enough ' + gets.chomp + ' to pay
#   for the vacation.'
#
# end
# mad_libs
