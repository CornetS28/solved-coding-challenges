# frozen_string_literal: true

# Given a collection of intervals, merge all overlapping intervals.

# Example 1:

# Input: [[1,3],[2,6],[8,10],[15,18]]
# Output: [[1,6],[8,10],[15,18]]
# Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
# Example 2:

# Input: [[1,4],[4,5]]
# Output: [[1,5]]
# Explanation: Intervals [1,4] and [4,5] are considered overlapping.

def merge(intervals)
  return intervals if intervals.length <= 1

  intervals.sort_by! { |a| a[0] }
  merged_intervals = []
  start = intervals.first.first
  finish = intervals.first.last

  1.upto(intervals.length - 1) do |i|
    # we have an overlap
    if intervals[i].first <= finish
      finish = [intervals[i].last, finish].max
    else
      merged_intervals.push([start, finish])
      start = intervals[i].first
      finish = intervals[i].last
     end
  end
  merged_intervals.push([start, finish])
end

p merge([[1, 3], [2, 6], [8, 10], [15, 18]])
