class FibonacciMemo
  def initialize
    @memoized_results = {}
  end

  def fib(n)
    if !@memoized_results[n].nil?
      @memoized_results[n]
    elsif n < 2
      n
    else
      memoized_result = fib(n - 1) + fib(n - 2)
      @memoized_results[n] = memoized_result
      memoized_result
    end
  end
end