# https://www.hackerrank.com/contests/projecteuler/challenges/euler001
# Project Euler #1: Multiples of 3 and 5
#
def sum_of_multiples_of_3_or_5(num)
  sum = 0
  3.upto(num).select do |x|
    sum += x if x % 3 == 0 || x % 5 == 0
  end
  sum
end

args = ARGF.readlines

args[1..-1].each do |arg|
  num = arg.to_i - 1
  p sum_of_multiples_of_3_or_5(num)
end