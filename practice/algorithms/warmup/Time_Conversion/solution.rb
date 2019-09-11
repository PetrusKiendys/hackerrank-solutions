#!/bin/ruby

require 'time'
#
# Complete the timeConversion function below.
#
def timeConversion(s)
    t = Time.parse(s)
    t.strftime("%T")
end

fp = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip
result = timeConversion s

fp.write result
fp.write "\n"
fp.close()

