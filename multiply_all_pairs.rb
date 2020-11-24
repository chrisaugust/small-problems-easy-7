# Multiply All Pairs
#
# Problem
# Write a method that takes two argument arrays of numbers and returns an array
# with the product of every pair of numbers that can be formed between the 
# elements of the argument arrays. Results should be sorted by increasing value.
#
# Examples
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
#
# Data Structures / Type Signature
# array -> array
#
# Algorithm
# 1) create an empty results array
# 2) loop through the elements of 1st array:
# 3) for each element of 1st array, loop through the
#    elements of the 2nd array
# 4) append product of 1st array elements and 2nd array elements
#    to the results array
# 5) sort the results array by increasing value 
#
# Code
require 'test/unit'

class MultiplyAllPairs < Test::Unit::TestCase
  def test_multiply_all_pairs
    assert_equal(multiply_all_pairs([2, 4], [4, 3, 1, 2]), 
                                    [2, 4, 4, 6, 8, 8, 12, 16])
  end
end

def multiply_all_pairs(arr1, arr2)
  results_arr = []
  
  arr1.each do |elem1|
    arr2.each do |elem2|
      results_arr << elem1 * elem2
    end
  end

  results_arr.sort!
end
