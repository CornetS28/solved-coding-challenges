# frozen_string_literal: true

# Find the missing letter

# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# ['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'

# ["a","b","c","d","f"] -> "e"
# ["O","Q","R","S"] -> "P"
# (Use the English alphabet with 26 letters!)

def find_missing_letter(arr) # 1st way
  ([*arr.first..arr.last] - arr).join
end

def find_missing_letter(arr) # 2nd way
  ((arr.first..arr.last).to_a - arr).join
end

def find_missing_letter(arr) # 3rd way
  arr.each { |letter| return letter.next unless arr.include?(letter.next) }
end

def find_missing_letter(arr) # 4th way
  arr.each { |letter| return letter.next unless arr.include?(letter.next) }
end

def find_missing_letter(arr) # 5th way
  ([*arr[0]..arr[-1]] - arr).join
end
p find_missing_letter(%w[a b c d f])
