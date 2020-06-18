# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
   bits = [0]*32
    for k in  0 .. 31 
        bits[k] =((1<< k)&n)>0? 1:0 
    end
    bits.reverse!
    output=0
    bits.each_with_index do |bit,e|
        output += bit* 2**e
    end
    output
end