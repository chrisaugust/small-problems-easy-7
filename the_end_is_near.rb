# The End Is Near But Not Here
#
# Problem
# Write a method that returns the next to last word in the string 
# passed in as an argument. Words are any sequence of non-blank
# characters. Assume that the input string will always contain at
# least two words.
#
# Examples
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
#
# Data Structures / Type Signature
# string -> array -> string
#
# Algorithm
# 1) convert input string into an array of words (split on ' ')
# 1) take the word array and find the [-2] index value
# 2) return that value (the penultimate word)
#
# Code
require 'test/unit'

class TheEndIsNearButNotHere < Test::Unit::TestCase
  def test_penultimate
    assert_equal(penultimate('last word'), 'last')
    assert_equal(penultimate('Launch School is great!'), 'is')
  end
end

def penultimate(str)
  words = str.split
  penultimate_word = words[-2]
end
