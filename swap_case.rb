# Swap Case 
#
# Problem
# Write a method that takes a string as argument and returns
# a string in which all uppercase letters are replaced by lowercase
# and vice versa. All non letter characters should remain the same. 
# Don't use String#swapcase -- write your own version.
#
# Examples
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
#
# Data Structures / Type Signature
# string -> array -> string
#
# Algorithm
# 1) split string into an array
# 2) iterate through array, changing uppercase and lowercase letters
# 3) join array elements back into a string
#
# Code
require 'test/unit'

class SwapCase < Test::Unit::TestCase
  def test_swapcase
    assert_equal(swapcase('CamelCase'), 'cAMELcASE')
    assert_equal(swapcase('Tonight on XYZ-TV'), 'tONIGHT ON xyz-tv')
  end
end

def swapcase(str)
  arr = str.split('')
  
  arr.each do |c|
    case c
    when /[a-z]/
      c.upcase!
    when /[A-Z]/
      c.downcase!
    else
      next
    end
  end
  
  swapped_case_str = arr.join('')
end
