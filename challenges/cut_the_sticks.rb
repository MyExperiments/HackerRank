# https://www.hackerrank.com/challenges/cut-the-sticks
def reduce(lengths)
  min = lengths.min
  lengths.map { |length| length - min }.reject { |length| length == 0 }
end

def number_of_sticks_cut(lengths)
   lengths.size
end

args = ARGF.readlines

number_of_sticks = args.first.to_i

lengths = args.last.split(' ').map(&:to_i)

while(lengths.size > 0) do
  puts number_of_sticks_cut(lengths)
  lengths = reduce(lengths)
end
