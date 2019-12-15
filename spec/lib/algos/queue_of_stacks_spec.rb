# frozen_string_literal: true

require 'algos/queue_of_stacks'

describe Algos::QueueOfStacks do
  describe '#enq' do
    it 'fills the queue, FIFO' do
      queue_of_stacks = Algos::QueueOfStacks.new
      3.times { |value| queue_of_stacks.enq(value + 1) }
      expect(queue_of_stacks.size).to(eq(3))
    end
  end

  describe '#deq' do
    it 'removes elements, FIFO, from the queue' do
      queue_of_stacks = Algos::QueueOfStacks.new
      3.times { |value| queue_of_stacks.enq(value + 1) }
      1.upto(3).each do |dequeue_value|
        expect(queue_of_stacks.deq).to(eq(dequeue_value))
      end
    end
  end
end
