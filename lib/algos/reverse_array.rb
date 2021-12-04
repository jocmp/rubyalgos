# frozen_string_literal: true

require_relative "vm"

module Algos
  class ReverseArray
    class << self
      def reverse_array(array)
        new.reverse_array(array)
      end
    end

    def reverse_array(array, acc = [])
      if array.length.zero?
        acc
      else
        reverse_array(array[0...-1], acc + [array.last])
      end
    end
  end
end
