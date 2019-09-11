#!/bin/ruby

require 'json'
require 'stringio'

# Complete the breakingRecords function below.
def breakingRecords(scores)
  min, max = scores[0], scores[0]
  count_min, count_max = 0, 0
  scores[1...scores.length].each {|i|
    case
    when i < min then count_min += 1; min = i
    when i > max then count_max += 1; max = i
    end
  }
  result = [count_max, count_min]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i
scores = gets.rstrip.split(' ').map(&:to_i)
result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"
fptr.close()

