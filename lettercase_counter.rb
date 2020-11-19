# Lettercase Counter
#
# Problem
# Write a method that takes a string and returns a hash 
# containing 3 entries:
#   lowercase => number of lowercase letters in the string
#   uppercase => number of uppercase letters in the string
#   neither => number of characters that are neither uppercase or lowercase
#
# Examples
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#
# Data Structures / Type Signature
# String -> Array -> Hash
#
# Algorithm
# 1) initiate hash with keys ['lowercase', 'uppercase', 'neither'] and
#    default values of 0 for each
# 2) split argument str into an array of the individual characters
# 2) iterate through the array of characters, checking each character against
#    regex groupings [a-z], [A-Z], [^a-zA-Z] for lowercase, uppercase, and
#    neither respectively, and skipping whitespace 
# 3) increment the count value for the relevant group key in hash
#
# Code
require 'test/unit'

class LettercaseCounter < Test::Unit::TestCase
  def test_letter_case_count
    assert_equal(letter_case_count('abCdef 123'), 
                 { lowercase: 5, uppercase: 1, neither: 4 })
    assert_equal(letter_case_count('AbCd +Ef'), 
                 { lowercase: 3, uppercase: 3, neither: 2 })
    assert_equal(letter_case_count('123'), 
                 { lowercase: 0, uppercase: 0, neither: 3 })
    assert_equal(letter_case_count(''),
                { lowercase: 0, uppercase: 0, neither: 0 })
  end
end

def letter_case_count(str)
  h = Hash[[[:lowercase, 0],[:uppercase, 0],[:neither, 0]]]  
 
  a = str.split('')
 
  a.each do |c|
    case c
    when /[a-z]/
      h[:lowercase] += 1
    when /[A-Z]/
      h[:uppercase] += 1
    when /[^a-zA-Z]/
      h[:neither] += 1
    when /\s/
      next
    end
  end

  return h
end
