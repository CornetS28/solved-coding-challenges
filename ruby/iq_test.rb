# frozen_string_literal: true

# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

# ##Examples :

# iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

# iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd


def iq_test(numbers)
  # convert to array
  arr = numbers.split
  # separate even
  even = arr.select { |num| num.to_i.even? }
  # separate odd
  odd = arr.select { |num| num.to_i.odd? }
  # return index+1 where odd or even equals one
  even.count == 1 ? arr.index(even.first) + 1 : arr.index(odd.first) + 1
end

def iq_test(numbers)
  arr = numbers.split.map { |n| n.to_i.odd? }
  arr.count(false) == 1 ? (arr.index(false) + 1) : (arr.index(true) + 1)
end

# def iq_test(numbers)
#   (i = numbers.split.map(&:to_i)).index(i.partition(&:odd?).find(&:one?).first) + 1
# end

puts iq_test('2 4 7 8 10')
puts iq_test('1 2 1 1')



