class StackOfQueues
  def initialize
    @push_queue = Queue.new
  end

  def push(value)
    @push_queue.enq(value)
  end

  def pop
    pop_queue = Queue.new
    pop_queue.enq(@push_queue.deq) while @push_queue.size > 1
    pop_value = @push_queue.deq
    @push_queue.enq(pop_queue.deq) while pop_queue.size.positive?
    pop_value
  end


  def size
    @push_queue.size
  end
end