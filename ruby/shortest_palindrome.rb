def shortest_palindrome(s)
  arr = s.downcase.chars
  return arr.join if arr == arr.reverse  
   arr.each_with_index do |el, index|
       next_element = arr[index + 1]
       newArr = arr.unshift(next_element)
       return newArr.join if newArr == newArr.reverse
   end 
end


# puts shortest_palindrome("dcbabcd")
puts shortest_palindrome("aacecaaa")