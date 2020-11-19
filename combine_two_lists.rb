# Combine Two Lists 
#
# Problem
# Write a method that combines two arrays passed in
# as arguments, returning a new array with all elements 
# from both argument arrays in alternating order. Assume
# that both arrays are non-empty and have the same 
# number of elements. 
#
# Examples
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
#
# Data Structures / Type Signature
# array -> array
#
# Algorithm
# 1) initiate a counter variable with the value of 0
# 2) initialize an empty array (interleaved_array)
# 2) loop through the argument arrays, pushing array elements
#    at the counter index into interleaved_array 
# 3) return interleaved_array
#
# Code
require 'test/unit'

class CombineTwoLists < Test::Unit::TestCase
  def test_interleave
    assert_equal(interleave([1, 2, 3], ['a', 'b', 'c']), 
                            [1, 'a', 2, 'b', 3, 'c'])
    assert_equal(interleave(

     ['No labor-saving machine',
      'Nor will I be able to leave behind me any wealthy bequest to found hospital or library',
      'Nor literary success nor intellect; nor book for the book-shelf',
      'For comrades and lovers'], 
      ['Nor discovery have I made',
       'Nor reminiscence of any deed of courage for America',
       'But a few carols vibrating through the air I leave',
       ' -- Walt Whitman']),

      ['No labor-saving machine',
      'Nor discovery have I made',
      'Nor will I be able to leave behind me any wealthy bequest to found hospital or library',
      'Nor reminiscence of any deed of courage for America',
      'Nor literary success nor intellect; nor book for the book-shelf',
      'But a few carols vibrating through the air I leave',
      'For comrades and lovers',
      ' -- Walt Whitman'])
  end
end

def interleave(arr1, arr2)
  counter = 0
  interleaved_array = []
  arr1.each do |elem|
    interleaved_array << elem
    interleaved_array << arr2[counter]
    counter += 1
  end
  interleaved_array
end
