# Capitalize Words 
#
# Problem
# Write a method that takes a single string argument and 
# returns a new string containing the original value of the
# argument but with the first character of every word capitalized
# and everything else in lowercase. Assume that all words passed in
# will be a sequence of non-blank characters.
#
# Examples
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#
# Data Structures / Type Signature
# string -> array -> string
#
# Algorithm
# 1) split string into an array of words
# 2) capitalize each word in the array
# 3) join words back into a string
#
# Code
require 'test/unit'

class CapitalizeWords < Test::Unit::TestCase
  def test_word_cap
    assert_equal(word_cap('four score and seven'), 'Four Score And Seven')
    assert_equal(word_cap('the javaScript language'), 'The Javascript Language')
    assert_equal(word_cap('this is a "quoted" word'), 'This Is A "quoted" Word')
  end
end

def word_cap(str)
  a = str.split
  
  a.each do |word|
    word.capitalize!
  end

  cap_str = a.join(' ')
end
