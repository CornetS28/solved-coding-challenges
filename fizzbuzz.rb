def fizzbuzzFirstWay(num)
  if num % 5 == 0 && num % 3 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    num
  end
end

def fizzbuzzSecondWay(num)
 num3 = num.modulo(3) == 0
 num5 = num.modulo(5) == 0

 puts case 
 when (num3 and num5) then "FizzBuzz"
 when num3 then "Fizz"
 when num5 then "Buzz" 
 else
   num
 end
end

def fizzbuzzThirdWay(num)
 x = ''
 x += "Fizz" if num % 3 == 0
 x += "Buzz" if num % 5 == 0
 puts (x.empty? ? num : x)
end

fizzbuzzFirstWay(15)
fizzbuzzSecondWay(15)
fizzbuzzThirdWay(61)