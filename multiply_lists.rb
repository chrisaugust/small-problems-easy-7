# Multiply Lists
#
# Problem
# Write a method that takes two array arguments of equal lengths
# and which contains only number elements, and returns an array
# whose elements are the product of the pair of numbers at the same
# index in the argument arrays. 
#
# Examples
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#
#
# Data Structures / Type Signature
# array -> array
#
#
# Algorithm
# 1) initialize an empty array (results_array)
# 2) iterate over one of the argument arrays
# 3) for each index value, multiply the associated elements
#    from the argument arrays, appending the result to 
#    results_array
# 4) return results_array
#
# Code
require 'test/unit'

class MultiplyLists < Test::Unit::TestCase
  def test_multiply_lists
    assert_equal(multiply_list([3, 5, 7], [9, 10, 11]), [27, 50, 77])
    arr1, arr2 = [1,2,3,4], [5,6,7,8]
    assert_equal(arr1.length, multiply_list(arr1,arr2).length)
  end
end

def multiply_list(list1, list2)
  results_array = []
  
  list1.each_with_index do |elem, idx|
    results_array << elem * list2[idx]
  end

  results_array
end
