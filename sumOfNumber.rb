# frozen_string_literal: true

def sum(number) #1st way
  (1..number).reduce:+
end

# def sum(number) #2nd way
#   i = 0
#   sum = 0
#   while i < number do
#     i += 1
#    sum += i
#   end
#   sum
# end

# def sum(number)
#   sum = 0
#   (0..number).each do |i|
#      sum += i
#   end
#   sum
# end

# def sum(number)
#   sum = 0
#   (0..number).each do |number|
#     sum = number + sum
#   end
#   sum
# end

# def sum(number)
#  i = 0
#  sum =0

#  begin
#   i += 1
#    sum += i
#  end while i < number
#  sum
# end
puts sum(4)
# => 4*3*2*1 = 10
puts sum(10)
# =>10*9*8*7*6*5*4*3*2*1 = 55
