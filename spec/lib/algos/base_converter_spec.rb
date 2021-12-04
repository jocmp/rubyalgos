# frozen_string_literal: true

require "algos/base_converter"

describe Algos::BaseConverter do
  describe "#value_from_decimal" do
    context "custom base 62" do
      it "generates a base62 based on a a given value" do
        base62_converter = Algos::BaseConverter.new(symbols: [*"0".."9", *"a".."z", *"A".."Z"], radix: 62)

        expect(base62_converter.value_from_decimal(0)).to(eq("0"))
        expect(base62_converter.value_from_decimal(125)).to(eq("21"))
        expect(base62_converter.value_from_decimal(7912)).to(eq("23C"))
      end
    end

    context "binary" do
      let(:binary_symbols) { %w[0 1] }
      it "sets 0, 1 and 10 to their base 2 equivalents" do
        base2_converter = Algos::BaseConverter.new(symbols: binary_symbols, radix: 2)
        expect(base2_converter.value_from_decimal(0)).to(eq("0"))
        expect(base2_converter.value_from_decimal(1)).to(eq("1"))
        expect(base2_converter.value_from_decimal(10)).to(eq("1010"))
      end

      it "converts unsigned short integer max to binary" do
        expect(Algos::BaseConverter.new(symbols: binary_symbols, radix: 2).value_from_decimal(65_535)).to(eq("1111111111111111"))
      end
    end

    context "hexidecimal" do
      let(:hex_symbols) { [*"0".."9", *"A".."F"] }

      it "converts 1 through 10 to their base16 equivalent" do
        base_converter = Algos::BaseConverter.new(symbols: hex_symbols, radix: 16)
        (0..10).each_with_index do |base10_value, index|
          expect(base_converter.value_from_decimal(base10_value)).to(eq(hex_symbols[index]))
        end
      end

      it "converts unsigned short integer max to hex" do
        expect(Algos::BaseConverter.new(symbols: hex_symbols, radix: 16).value_from_decimal(65_535)).to(eq("FFFF"))
      end
    end

    context "base 60" do
      let(:sexagesimal_symbols) { [*"0".."9"] }
      it "converts decimal to sexagesimal values" do
        expect(Algos::BaseConverter.new(symbols: sexagesimal_symbols, radix: 60).value_from_decimal(60)).to(eq("10"))
      end
    end
  end
end
