def convert_to_binary(integer)
 binary_number = []

 while integer > 0
  binary_number << integer % 2
   integer /= 2
 end
  binary_number
end

def convert_to_binary(integer)
  integer.to_s(2)
end

def convert_to_binary(integer)
  
end

puts convert_to_binary(13)
