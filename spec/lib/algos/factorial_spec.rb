# frozen_string_literal: true

require 'algos/factorial'

RSpec.describe Algos::Factorial do
  describe '#call_acc' do
    specify do
      fact = proc { |n| (1..n).inject(1) { |r, i| r * i } }
      (0..50).map { |n| fact[n] }.each_with_index do |expected_result, n|
        expect(Algos::Factorial.call(n)).to(eq(expected_result))
      end
    end
  end
end
