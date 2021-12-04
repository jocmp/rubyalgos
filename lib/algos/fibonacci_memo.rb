# frozen_string_literal: true

module Algos
  class FibonacciMemo
    def initialize
      @memoized_results = {}
    end

    def fib(n)
      if n < 2
        n
      elsif !@memoized_results[n].nil?
        @memoized_results[n]
      else
        memoized_result = fib(n - 1) + fib(n - 2)
        @memoized_results[n] = memoized_result
        memoized_result
      end
    end
  end
end
