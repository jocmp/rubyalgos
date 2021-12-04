require "benchmark"
require "./lib/algos/factorial"

test_n = 50

fact = proc { |n| (1..n).reduce(1) { |r, i| r * i } }
Benchmark.bmbm(20) do |x|
  x.report("Recursive impl") { Algos::Factorial.call(test_n) }
  x.report("Reduce impl") { fact.call(test_n) }
end
