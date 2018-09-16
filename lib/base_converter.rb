class BaseConverter
  def initialize(symbols = nil, radix)
    @symbols = symbols
    @radix = radix
  end

  def value_from_decimal(decimal_value)
    return @symbols.first if decimal_value == 0

    base_conversion_elements = []
    conversion_value = decimal_value

    while conversion_value > 0
      base_conversion_elements.push(@symbols[conversion_value % @radix])
      conversion_value = conversion_value / @radix
    end

    base_conversion_elements.reverse.join
  end
end