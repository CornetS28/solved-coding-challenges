# frozen_string_literal: true

# In this kata, you must create a digital root function.

# A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

# Here's how it works:

# digital_root(16)
# => 1 + 6
# => 7

# digital_root(942)
# => 9 + 4 + 2
# => 15 ...
# => 1 + 5
# => 6

# digital_root(132189)
# => 1 + 3 + 2 + 1 + 8 + 9
# => 24 ...
# => 2 + 4
# => 6

# digital_root(493193)
# => 4 + 9 + 3 + 1 + 9 + 3
# => 29 ...
# => 2 + 9
# => 11 ...
# => 1 + 1
# => 2

def digital_root(num)
  return num if num < 10
  output = digital_root(num / 10) + num % 10
  output >= 10 ? digital_root(output) : output
end

def digital_root(num)
 num < 10 ? num : (digital_root(num / 10) + num % 10 >= 10 ? digital_root(digital_root(num / 10) + num % 10) : digital_root(num / 10) + num % 10)
end

puts digital_root(34)