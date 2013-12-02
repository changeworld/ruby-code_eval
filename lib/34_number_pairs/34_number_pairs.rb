# -*- coding: utf-8 -*-

def number_pairs(line)
  nums, x = line.split(';').map {|str|
    str.index(',')? str.split(',').map {|num| num = num.strip.to_i} : str.strip.to_i
  }

  pairs = nums.combination(2).select {|a, b|
    a + b == x}
  pairs.empty? ? 'NULL' : pairs.map {|pair| pair.join(',')}.join(';')
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts number_pairs(line)
end
file.close