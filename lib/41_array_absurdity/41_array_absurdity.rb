# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each do |line|
  next if line.chomp.empty?
  n, nums = line.split(';').map {|str| str.index(',')? str.split(',').map {|num| num = num.strip.to_i} : str.strip.to_i}
  next if nums.size != n or nums.any? {|num| !num.between?(0, n-2)}
  nums.sort.inject {|num, i| num == i ? puts(i) : num = i }
end
file.close
