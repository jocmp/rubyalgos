require 'queue_of_stacks'

RSpec.describe QueueOfStacks do
  describe '#enqueue' do
    it 'fills the queue' do
      queue_of_stacks = QueueOfStacks.new
      3.times { |value| queue_of_stacks.enq(value + 1) }
      expect(queue_of_stacks.size).to(eq(3))
    end

    it 'dequeues' do
      queue_of_stacks = QueueOfStacks.new
      3.times { |value| queue_of_stacks.enq(value + 1) }
      1.upto(3).each do |dequeue_value|
        expect(queue_of_stacks.deq).to(eq(dequeue_value))
      end
    end
  end
end