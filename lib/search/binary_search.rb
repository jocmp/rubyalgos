# frozen_string_literal: true

module Search
  class BinarySearch
    def self.call(nums, n, target)
      l = 0
      r = n - 1

      while l <= r
        m = l + (r - l / 2).floor

        if nums[m] < target
          l = m + 1
        elsif nums[m] > target
          r = m - 1
        else
          return m
        end
      end

      -1
    end
  end
end
