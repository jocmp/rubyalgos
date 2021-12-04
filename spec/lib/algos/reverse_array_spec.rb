# frozen_string_literal: true

require "algos/reverse_array"

describe Algos::ReverseArray do
  let(:subject) { Algos::ReverseArray.reverse_array(array) }

  describe ".reverse_array" do
    context "empty array" do
      let(:array) { [] }
      let(:result) { [] }
      specify { expect(subject).to eq(result) }
    end

    context "one element array" do
      let(:array) { [1] }
      let(:result) { [1] }

      specify { expect(subject).to eq(result) }
    end

    context "several element array" do
      let(:array) { [1, 2, 3, 4] }
      let(:result) { [4, 3, 2, 1] }

      specify { expect(subject).to eq(result) }
    end
  end
end
