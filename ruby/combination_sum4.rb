# Given an integer array with all positive numbers and no duplicates, find the number of possible combinations that add up to a positive integer target.

# Example:

# nums = [1, 2, 3]
# target = 4

# The possible combination ways are:
# (1, 1, 1, 1)
# (1, 1, 2)
# (1, 2, 1)
# (1, 3)
# (2, 1, 1)
# (2, 2)
# (3, 1)

# Note that different sequences are counted as different combinations.

# Therefore the output is 7.
 
def combination_sum4(nums, target)

  dp = [0]*(target + 1)
  dp[0] = 1
  for i in 0 .. target
    for num in nums
      if i + num <= target
        dp[i+num] += dp[i]
      end
    end
  end
   dp[-1]
end


puts combination_sum4([1, 2, 3], 4)