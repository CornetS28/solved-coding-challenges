# This is a demo task.

# Write a function:

# def solution(a)

# that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

# Given A = [1, 2, 3], the function should return 4.

# Given A = [−1, −3], the function should return 1.

# Write an efficient algorithm for the following assumptions:

# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000..1,000,000].


def solution(arr)
  sorterArr = arr.sort
  result = 1
  
  for num in sorterArr
    if num > result
      break
    elsif num > 0
      result = num + 1
    end
  end
  return result
end

puts solution([1, 3, 6, 4, 1, 2])