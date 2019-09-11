#!/bin/ruby

require 'json'
require 'stringio'
require 'matrix'

# force Matrix 'private' setters to be 'public'
class MatrixExt < Matrix
  public :"[]=", :set_element, :set_component
end

# Complete the hourglassSum function below.
def hourglassSum(arr)
  # create Matrix representation of incoming array
  mtx = MatrixExt.rows(arr)
  n = mtx.row_count

  # create a collection of 3x3 Matrix chunks
  sub_mtx = Array.new(n-2){Array.new(n-2,0)}
  # sub_mtx = MatrixExt.zero(n-2, n-2)    <-- can't stuff Matrix into Matrices
  (n-2).times {|i|
    (n-2).times {|j|
      sub_mtx[i][j] = mtx.minor(i..i+2, j..j+2)
    }
  }

  # zero the "hips" of the 'sub_mtx' collection to form "hourglasses",
  # and find maximum hourglass sum
  max_sum = nil
  sub_mtx.flatten!
  sub_mtx.each_with_index { |item, i|    # <-- alternatively, convert Matrix -> Array at this step to avoid monkeypatching Matrix setters
    item[1, 0] = 0
    item[1, 2] = 0

    sum = item.to_a.flatten.reduce(:+)
    max_sum ||= sum   # initialize 'max_sum' with the first 'sum' value
    max_sum = sum if sum > max_sum
  }

  max_sum
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)
6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end
result = hourglassSum arr

fptr.write result
fptr.write "\n"
fptr.close()

