# frozen_string_literal: true

module Algos
  class BaseConverter
    def initialize(radix:, symbols: nil)
      @symbols = symbols
      @radix = radix
    end

    def value_from_decimal(decimal_value)
      return @symbols.first if decimal_value.zero?

      base_conversion_elements = []
      conversion_value = decimal_value

      while conversion_value.positive?
        base_conversion_elements.push(@symbols[conversion_value % @radix])
        conversion_value /= @radix
      end

      base_conversion_elements.reverse.join
    end
  end
end
