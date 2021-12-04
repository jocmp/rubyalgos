# frozen_string_literal: true

require "algos/fibonacci_memo"

RSpec.describe Algos::FibonacciMemo do
  describe "#fib" do
    it "computes values from n = 0 to n = 12 for the fibonnaci sequence" do
      [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144].each_with_index do |expected_result, n|
        expect(Algos::FibonacciMemo.new.fib(n)).to(eq(expected_result))
      end
    end
  end
end
