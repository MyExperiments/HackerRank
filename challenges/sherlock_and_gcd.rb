# https://www.hackerrank.com/challenges/sherlock-and-gcd
def gcd(numbers)
  return numbers.first if numbers.length == 1
  numbers.first.gcd(gcd(numbers[1..-1]))
end

def satisfies?(size, numbers)
  size > 1 && gcd(numbers) == 1
end

inputs = ARGF.map do |args|
   args.gsub('\n', '').split(' ').map(&:to_i)
end

number_of_test_cases = inputs.first.first
cases = (1..(2*number_of_test_cases)).step(2).map do |c|
    { size: inputs[c].first, elements: inputs[c+1] }
end

cases.each do |c|
  puts (satisfies?(c[:size], c[:elements])) ? 'YES' : 'NO'
end