def shortest_subarray(a, k)
  delta, q, min = 0, [], Float::INFINITY
  a.size.times do |i|
    delta += a[i]
    q.pop while !q.empty? && q[-1][1]+delta < a[i]
    q << [i, a[i]-delta]
    last = q.shift while !q.empty? && q[0][1]+delta >= k
    min = [min, i-last[0]+1].min if last
  end
  min == Float::INFINITY ? -1 : min
end

puts shortest_subarray([1, 1], 4)