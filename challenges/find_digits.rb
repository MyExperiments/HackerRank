# https://www.hackerrank.com/challenges/find-digits

def find_digits(number)
  digits = number.to_s.chars.map(&:to_i)
  complete_divisors = digits.select do |digit|
      digit != 0 && number % digit == 0
  end
    complete_divisors.length
end

args = ARGF.readlines

args[1..-1].each { |arg| puts find_digits(arg.to_i) }