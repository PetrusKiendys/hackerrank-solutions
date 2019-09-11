#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  (1..n).each { |i|
    print(" "*(n-i) + "#"*i + "\n") unless n == i
  }
  print "#"*n; $stdout.flush
end

n = gets.to_i
staircase n

