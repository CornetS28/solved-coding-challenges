def longest_palindrome(str)
  # convert to downcase and to array
   arr = str.downcase.chars
  # reduce str length till the lst character
   str.length.downto(1) do |n|
    # iterate over all and find where elementa are equal to the reverse
   ana = arr.each_cons(n).find { |b| b == b.reverse} 
    return ana.join if ana
  end

end

puts longest_palindrome "abcdxyzyxabcdaaa"
puts longest_palindrome "abcdefghba"