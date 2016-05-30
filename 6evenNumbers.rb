# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?
require'Benchmark'

# Looping
def loopin(num)
  newArray = []
  evenNum = 2
  while newArray.length < num
    newArray << evenNum
    evenNum += 2
  end
  newArray
end

p loopin(10)

timeLooping = Benchmark.measure do
  1000000.times {loopin(10)}
end
puts timeLooping

require'Benchmark'

# Recursion
def recur(num, newArray = [], evenNum = 2)
  while newArray.length < num
    newArray << evenNum
    recur(num, newArray, evenNum += 2)
  end
  newArray
end

p recur(10)

timeRecursion = Benchmark.measure do
  1000000.times {recur(10)}
end
puts timeRecursion


#BENCHMARK RESULTS
#timeRecursion took 1.87 secs to execute while timeLooping took .94 secs. Thus, looping in this case is more efficient.
