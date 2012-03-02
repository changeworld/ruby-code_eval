# -*- coding: utf-8 -*-

def sum_of_integers(line)
  nums = line.split(',').map {|num| num = num.strip.to_i}
  sum_nums = []
  begin
    nums.inject(0) {|sum, i| sum_nums << sum += i; sum}
  end while nums.shift
  puts sum_nums.max
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts sum_of_integers(line)
end
file.close