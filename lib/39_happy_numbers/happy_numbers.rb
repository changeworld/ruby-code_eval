# -*- coding: utf-8 -*-

def happy_number?(num, cache=[])
  return 1 if 1 == num
  cache << num
  res = sum_of_sq_of_digits(num)
  return 0 if cache.include? res
  happy_number?(res, cache)
end

def sum_of_sq_of_digits(num)
  num.to_s.each_char.map{|ch| ch.to_i**2}.inject(:+)
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts happy_number?(line.to_i)
end
file.close
