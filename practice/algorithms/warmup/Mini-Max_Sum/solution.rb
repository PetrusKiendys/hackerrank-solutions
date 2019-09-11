#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    n = arr.length
    arr.sort!
    min_sum = arr[0...n-1].reduce(:+)
    max_sum = arr[1...n].reduce(:+)
    print min_sum.to_s + " " + max_sum.to_s
end

arr = gets.rstrip.split(' ').map(&:to_i)
miniMaxSum arr

