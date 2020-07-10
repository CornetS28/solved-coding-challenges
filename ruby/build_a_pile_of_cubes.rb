# frozen_string_literal: true

# Your task is to construct a building which will be a pile of n cubes. The cube at the bottom will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.

# You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?

# The parameter of the function findNb (find_nb, find-nb, findNb) will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.

# Examples:
# findNb(1071225) --> 45
# findNb(91716553919377) --> -1

def find_nb(m)
  n, sum = 1, 1

  while sum < m
    n += 1
      sum += n**3
  end
  return sum == m ? n : -1
end

# def find_nb(m)
#   (1..Float::INFINITY).each do |n|

#     if (1..n).inject(0) { |sum, value| sum + value**3 } == m
#       return n
#     else
#       next
#     end
#   end
# end

# 1.upto(10) { | i | puts i }

# p (1..Float::INFINITY).take(10) 
# v = []
  1.upto(10){|b| v << b }
 p v == (1..Float::INFINITY).take(10)
# 1.upto(10){|b| p b }
# p ("a"..).take(26)
# puts find_nb(225)
