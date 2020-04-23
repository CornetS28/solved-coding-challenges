# Alright, detective, one of our colleagues successfully observed our target person, Robby the robber. We followed him to a secret warehouse, where we assume to find all the stolen stuff. The door to this warehouse is secured by an electronic combination lock. Unfortunately our spy isn't sure about the PIN he saw, when Robby entered it.

# The keypad has the following layout:

# ┌───┬───┬───┐
# │ 1 │ 2 │ 3 │
# ├───┼───┼───┤
# │ 4 │ 5 │ 6 │
# ├───┼───┼───┤
# │ 7 │ 8 │ 9 │
# └───┼───┼───┘
#     │ 0 │
#     └───┘
# He noted the PIN 1357, but he also said, it is possible that each of the digits he saw could actually be another adjacent digit (horizontally or vertically, but not diagonally). E.g. instead of the 1 it could also be the 2 or 4. And instead of the 5 it could also be the 2, 4, 6 or 8.

# He also mentioned, he knows this kind of locks. You can enter an unlimited amount of wrong PINs, they never finally lock the system or sound the alarm. That's why we can try out all possible (*) variations.

# * possible in sense of: the observed PIN itself and all variations considering the adjacent digits

# Can you help us to find all those variations? It would be nice to have a function, that returns an array (or a list in Java and C#) of all variations for an observed PIN with a length of 1 to 8 digits. We could name the function getPINs (get_pins in python, GetPINs in C#). But please note that all PINs, the observed one and also the results, must be strings, because of potentially leading '0's. We already prepared some test cases for you.

# Detective, we count on you!

# For C# user: Do not use Mono. Mono is too slower when run your code.


def get_pins(observed)
   nums = {
      '0' => %w[0 8],
    '1' => %w[1 2 4],
    '2' => %w[1 2 3 5],
    '3' => %w[2 3 6],
    '4' => %w[1 4 7 5],
    '5' => %w[2 5 8 4 6],
    '6' => %w[3 6 9 5],
    '7' => %w[4 7 8],
    '8' => %w[0 5 7 8 9],
    '9' => %w[6 8 9]
  }
  
  digits, ret = Array.new, Array.new
  observed.chars.each { |e| digits.push(nums[e]) }
  products = digits[0].product(*digits[1..digits.length])
  products.each { |e| ret.push(e.join('')) }
  return ret.sort

end

def get_pins(observed)
  adjacent = {
    "1" => ["1", "2", "4"],
    "2" => ["1", "2", "3", "5"],
    "3" => ["2", "3", "6"],
    "4" => ["1", "4", "5", "7"],
    "5" => ["2", "4", "5", "6", "8"],
    "6" => ["3", "5", "6", "9"],
    "7" => ["4", "7", "8"],
    "8" => ["5", "7", "8", "9", "0"],
    "9" => ["6", "8", "9"],
    "0" => ["8", "0"]
  }
  
  return observed.chars.inject(['']){|possible, chr|
    possible.product(adjacent[chr]).map(&:join)
  }
end

def get_pins(observed)
  possible = %w(08 124 1235 236 1457 24568 3569 478 57890 689)
  [nil].product(*observed.split('').map{|number| possible[number.to_i].split('')}).map(&:join)
end

def get_pins(observed)
  all = []
  observed.split("").each do |n|
    all << %w(8 0) if n == "0"
    all << %w(1 2 4) if n == "1"
    all << %w(1 2 3 5) if n == "2"
    all << %w(2 3 6) if n == "3"
    all << %w(1 4 5 7) if n == "4"
    all << %w(2 4 5 6 8) if n == "5"
    all << %w(3 5 6 9) if n == "6"
    all << %w(4 7 8) if n == "7"
    all << %w(5 7 8 9 0) if n == "8"
    all << %w(6 8 9) if n == "9"
  end
  
  all[0].product(*all[1..-1]).map(&:join)
end
puts get_pins("0")