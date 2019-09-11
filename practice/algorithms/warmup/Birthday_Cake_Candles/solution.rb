#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(arr)
    tallest = arr.max
    count = arr.count(tallest)
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.to_i
arr = gets.rstrip.split(' ').map(&:to_i)
result = birthdayCakeCandles arr

fptr.write result
fptr.write "\n"
fptr.close()

