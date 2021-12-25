# Algos

![Ruby](https://github.com/jocmp/rubyalgos/workflows/Ruby/badge.svg?branch=master)

Some brainteasers I've found along the way

- [Base Converter](lib/algos/base_converter.rb) ([Tests](spec/lib/algos/base_converter_spec.rb))
  - Converts any Decimal number to another base, given a sorted set of symbols
- [Stack of Queues](lib/algos/queue_of_stacks.rb) ([Tests](spec/lib/algos/stack_of_queues_spec.rb))
- [Queue of Stacks](lib/algos/queue_of_stacks.rb) ([Tests](spec/lib/algos/queue_of_stacks_spec.rb))
- [Fibonacci, memoized](lib/algos/fibonacci_memo.rb) ([Tests](spec/lib/algos/fibonacci_memo_spec.rb))
- [Reverse array](lib/algos/reverse_array.rb) ([Tests](spec/lib/algos/reverse_array_spec.rb))
  - Tail-call recursive, uses Ruby's [negative array lookup](https://rubyquicktips.com/post/996814716/use-negative-array-indices) to
  find the last element in the recursive case.
- [Factorial](lib/algos/factorial.rb).The recursive implementation is about the same as just calling `reduce`
  ```
                             user     system      total        real
  Recursive impl         0.000010   0.000000   0.000010 (  0.000008)
  Reduce impl            0.000009   0.000000   0.000009 (  0.000008)
  ```

Also helpful: [MIT lecture notes on Memoization](http://courses.csail.mit.edu/6.006/fall09/lecture_notes/lecture18.pdf)

## Debugging

The project includes the Ruby [debug](https://github.com/ruby/debug) gem. This allows for command line debugging by requiring the gem along with
the `binding.break` command:

```ruby
# frozen_string_literal: true

require "algos/fibonacci_memo"
require "debug" # added

RSpec.describe Algos::FibonacciMemo do
  describe "#fib" do
    it "computes values from n = 0 to n = 12 for the fibonnaci sequence" do
      memo = Algos::FibonacciMemo.new

      [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144].each_with_index do |expected_result, n|
        binding.break # added
        expect(memo.fib(n)).to(eq(expected_result))
      end
    end
  end
end
```

From the shell

```bash
bin/rspec spec/lib/algos/fibonacci_memo_spec.rb
```

Output
```ruby
# $ bin/rspec spec/lib/algos/fibonacci_memo_spec.rb

Randomized with seed 33041
[7, 16] in ~/dev/rubyalgos/spec/lib/algos/fibonacci_memo_spec.rb
     7|   describe "#fib" do
     8|     it "computes values from n = 0 to n = 12 for the fibonnaci sequence" do
     9|       memo = Algos::FibonacciMemo.new
    10|
    11|       [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144].each_with_index do |expected_result, n|
=>  12|         binding.break
    13|         expect(memo.fib(n)).to(eq(expected_result))
    14|       end
    15|     end
    16|   end
=>#0    block {|expected_result=0, n=0|} in <top (required)> (4 levels) at ~/dev/rubyalgos/spec/lib/algos/fibonacci_memo_spec.rb:12
  #1    [C] Array#each at ~/dev/rubyalgos/spec/lib/algos/fibonacci_memo_spec.rb:11
  # and 32 frames (use `bt' command for all frames)
(rdbg)
```

### Debugging in VSCode

The same commands are available in VSCode using the following config and navigating to the debug view.

```jsonc
// in launch.json
{
  "version": "0.2.0",
  "configurations": [
    {
            "type": "rdbg",
            "name": "Debug current file with rdbg",
            "request": "launch",
            "script": "${file}",
            "args": [],
            "askParameters": true
    },
    {
            "type": "rdbg",
            "name": "Attach with rdbg",
            "request": "attach"
    }
  ]
}
```
