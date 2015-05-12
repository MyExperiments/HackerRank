# https://www.hackerrank.com/contests/projecteuler/challenges/euler001
# Project Euler #1: Multiples of 3 and 5
#
#
def sum_of_multiples(num, multiple)
  # largest multiple of a number 'y' below 'x' is: x - x % y
  upper = num - (num % multiple)
  # an = a + d(n-1) => n = (an - a)/d + 1
  count = (upper - multiple)/multiple + 1
  # Sum of first 'n' numbers of an arithmetic progression is:
  # s = n/2 * (2*a + (n-1)*d)
  count * (2 * multiple + (count - 1) * multiple)/2
end

args = ARGF.readlines

args[1..-1].each do |arg|
  num = arg.to_i - 1
  # Multiples of 3 or 5 = sum of multiples(3) +
  #                       sum of multiples(5) -
  #                       sum of multiples(15)
  p sum_of_multiples(num, 3) + sum_of_multiples(num, 5) - sum_of_multiples(num, 15)
end