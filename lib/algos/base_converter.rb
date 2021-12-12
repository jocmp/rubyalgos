# frozen_string_literal: true

module Algos
  class BaseConverter
    BASE_TO_SYMBOLS = {
      base62: { symbols: [*"0".."9", *"a".."z", *"A".."Z"], radix: 62 },
      binary: { symbols: %w[0 1], radix: 2 },
      hexadecimal: { symbols: [*"0".."9", *"A".."F"], radix: 16 }
    }.freeze

    BASE_TO_SYMBOLS.each do |base, values|
      define_singleton_method(base) do
        new(radix: values[:radix], symbols: values[:symbols])
      end
    end

    def initialize(radix:, symbols:)
      @symbols = symbols
      @radix = radix
    end

    attr_reader :symbols, :radix

    def value_from_decimal(decimal_value)
      return symbols.first if decimal_value.zero?

      base_conversion_elements = []
      conversion_value = decimal_value

      while conversion_value.positive?
        base_conversion_elements.push(symbols[conversion_value % radix])
        conversion_value /= radix
      end

      base_conversion_elements.reverse.join
    end
  end
end
