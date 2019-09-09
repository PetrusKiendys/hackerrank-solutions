#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    res = [0,0]
    a.each_with_index {|val, i|
        if a[i] > b[i] then res[0] += 1
        elsif a[i] < b[i] then res[1] += 1
        end
    }
    res
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)
b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()

