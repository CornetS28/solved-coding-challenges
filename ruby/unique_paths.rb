# Input: m = 3, n = 2
# Output: 3
# Explanation:
# From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
# 1. Right -> Right -> Down
# 2. Right -> Down -> Right
# 3. Down -> Right -> Right
# Example 2:

# Input: m = 7, n = 3
# Output: 28
 

# Constraints:

# 1 <= m, n <= 100
# It's guaranteed that the answer will be less than or equal to 2 * 10 ^ 9.

def unique_paths(m, n)
    cache = Array.new(m + 1) { Array.new(n + 1, 0) }
  cache[m - 1][n] = 1
  (m - 1).downto(0).each do |r|
    (n - 1).downto(0).each do |c|
      cache[r][c] = cache[r + 1][c] + cache[r][c + 1]
    end
  end
  cache[0][0]
end

puts unique_paths(3, 2)