# frozen_string_literal: true

require "search/binary_search"

RSpec.describe Search::BinarySearch do
  let(:nums) { [1, 2, 5, 7, 10, 25, 57] }

  [
    [1, 0],
    [7, 3],
    [57, 6]
  ].each do |target, index|
    it "finds the target" do
      expect(described_class.call(nums, nums.size, target)).to eq(index)
    end
  end

  context "not found" do
    it "returns -1" do
      expect(described_class.call(nums, nums.size, 900)).to eq(-1)
    end
  end
end
