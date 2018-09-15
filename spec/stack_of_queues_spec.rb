require 'stack_of_queues'

RSpec.describe StackOfQueues do
  describe '#push' do
    it 'pushes items onto the stack' do
      stack_of_queues = StackOfQueues.new
      3.times { |value| stack_of_queues.push(value + 1) }
      expect(stack_of_queues.size).to(eq(3))
    end
  end

  describe '#pop' do
    it 'pops items from a stack' do
      stack_of_queues = StackOfQueues.new
      3.times { |value| stack_of_queues.push(value + 1) }
      3.downto(1).each do |pop_value|
        expect(stack_of_queues.pop).to(eq(pop_value))
      end
    end
  end
end