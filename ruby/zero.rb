def zeros(n)
 trailing_zero = []
 factorial = (1..n).reduce:* 
 factorial.to_s.split('').reverse.select { |num| break if num.to_i != 0; trailing_zero << num }
 trailing_zero.count
end

def zeros(n) # best solution
  n < 5 ? 0 : (n / 5) + zeros(n / 5)
end

puts zeros(30)