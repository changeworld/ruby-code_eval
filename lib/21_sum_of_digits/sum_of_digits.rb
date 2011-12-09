# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each do |line|
  sum_digits = 0
  line.split(//).map {|number|
    number = number.to_i
    sum_digits += number
  }
  puts sum_digits
end
file.close
