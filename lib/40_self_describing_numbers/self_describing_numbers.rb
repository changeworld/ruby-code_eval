# -*- coding: utf-8 -*-

def self_describing_numbers(line)
  flag = 1
  number = line.split(//)
  (0..line.size-1).each do |i|
    flag = 0 unless (line.count("#{i}") == number[i].to_i)
  end
  flag
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts self_describing_numbers(line)
end
file.close