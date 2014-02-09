# -*- coding: utf-8 -*-
def jolly? seq
  size = seq.size - 1
  judge = Array.new(size, false)
  for array in (1..size) do
    diff = (seq[array] - seq[array - 1]).abs
    return false if diff < 1 || diff > size || judge[diff]
    judge[diff] = true
  end
  true
end

File.open(ARGV[0]).each_line do |line|
  seq = line.split(' ', 2)[1].split(' ').map(&:to_i)

  puts (jolly?(seq) ? 'Jolly' : 'Not jolly')
end