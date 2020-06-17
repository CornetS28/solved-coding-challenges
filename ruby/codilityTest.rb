def sol(s, k)
#  s.each_char.find { |c| s.count(c) > 1 }
 
output = ""
s.split("").group_by{|x| x}.each do |k,v| 

  output += "#{v.count}#{k}"
end

puts output.length - k
end

puts sol("ABBBCCDDCCC",5)