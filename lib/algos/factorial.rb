# frozen_string_literal: true

module Algos
  module Factorial
    module_function

    def call(n, acc = 1)
      if n.zero?
        acc
      else
        call(n - 1, n * acc)
      end
    end
  end
end
