#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
    total = arr.length
    c_plus, c_minus, c_zero = 0, 0, 0

    arr.each {|i|
        if i > 0 then c_plus += 1
        elsif i < 0 then c_minus += 1
        else c_zero += 1 end
    }
    puts c_plus.fdiv(total)
    puts c_minus.fdiv(total)
    puts c_zero.fdiv(total)
end

n = gets.to_i
arr = gets.rstrip.split(' ').map(&:to_i)
plusMinus arr

