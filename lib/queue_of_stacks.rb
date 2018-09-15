class QueueOfStacks
  def initialize
    @enq_stack = []
  end

  def enq(value)
    @enq_stack.push(value)
  end

  def deq
    deq_stack = []
    deq_stack.push(@enq_stack.pop) while @enq_stack.any?
    deq_value = deq_stack.pop
    @enq_stack.push(deq_stack.pop) while deq_stack.any?
    deq_value
  end

  def size
    @enq_stack.size
  end
end