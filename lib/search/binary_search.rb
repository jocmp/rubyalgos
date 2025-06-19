# frozen_string_literal: true

module Search
  class BinarySearch
    def self.call(nums, n, target)
      l = 0
      r = n - 1

      while l <= r
        # Set the middle element to the mid-point of the right and left pointers
        m = l + (r - l / 2).floor

        if nums[m] < target
          # If the middle pointer is less the the target,
          # increment the left pointer by 1
          l = m + 1
        elsif nums[m] > target
          # If the middle pointer is greater than the target,
          # decrement the right pointer by 1
          r = m - 1
        else
          # Success, the middle pointer is the target value,
          # return it
          return m
        end
      end

      # Unsuccessful.
      -1
    end
  end
end
