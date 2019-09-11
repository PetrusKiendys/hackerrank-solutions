#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    n = arr.length-1
    left_sum = (0..n).collect {|i| arr[i][i]}.reduce(:+)
    right_sum = (0..n).collect {|i| arr[i][n-i]}.reduce(:+)
    (left_sum-right_sum).abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')
n = gets.strip.to_i
arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"
fptr.close()

