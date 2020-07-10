def contains_duplicate(nums)
  nums.size != nums.uniq.size
end

 p contains_duplicate([5,3,9,0,3])