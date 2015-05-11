# https://www.hackerrank.com/challenges/song-of-pi
PI = '31415926535897932384626433833'

args = ARGF.readlines
number_of_test_cases = args.first.to_i

args[1..-1].each do |ar|
  song = ar.gsub('\n','')
  output = song.split(' ').map { |word| word.length.to_s }.join('')
  puts /^#{output}/.match(PI) ? "It's a pi song." :  "It's not a pi song."
end