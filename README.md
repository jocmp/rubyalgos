# Algos

Some brainteasers I've found along the way

- [Base Converter](lib/algos/base_converter.rb) ([Tests](spec/lib/algos/base_converter_spec.rb))
  - Converts any Decimal number to another base, given a sorted set of symbols
- [Stack of Queues](lib/algos/queue_of_stacks.rb) ([Tests](spec/lib/algos/stack_of_queues_spec.rb))
- [Queue of Stacks](lib/algos/queue_of_stacks.rb) ([Tests](spec/lib/algos/queue_of_stacks_spec.rb))
- [Fibonacci, memoized](lib/algos/fibonacci_memo.rb) ([Tests](spec/lib/algos/fibonacci_memo_spec.rb))
- [Reverse array](lib/algos/reverse_array.rb) ([Tests](spec/lib/algos/reverse_array_spec.rb))
  - Tail-call recursive, uses Ruby's [negative array lookup](https://rubyquicktips.com/post/996814716/use-negative-array-indices) to
  find the last element in the recursive case.

Also helpful: [MIT lecture notes on Memoization](http://courses.csail.mit.edu/6.006/fall09/lecture_notes/lecture18.pdf)
