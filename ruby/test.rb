def arr(arr1, arr2)
  newArr = []
  arr1.each do |el|
     newArr << el if !arr2.include? el
  end
   newArr
end

puts arr([3,4,1], [2,0,1])


