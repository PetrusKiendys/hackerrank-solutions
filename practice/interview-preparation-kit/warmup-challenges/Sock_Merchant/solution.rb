#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, arr)
    pairs = 0
    arr.uniq.each {|i| pairs += arr.count(i)/2 }
    pairs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i
arr = gets.rstrip.split(' ').map(&:to_i)
result = sockMerchant n, arr

fptr.write result
fptr.write "\n"
fptr.close()

