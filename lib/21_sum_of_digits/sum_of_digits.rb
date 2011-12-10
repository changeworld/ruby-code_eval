# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each do |line|
  sum_digits = 0
  line.split(//).map {|num|
    sum_digits += num.to_i
  }
  puts sum_digits
end
file.close
