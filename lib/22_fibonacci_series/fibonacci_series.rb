# -*- coding: utf-8 -*-

def fibonacci i
  i == 0 ? 0 : i <= 2 ? 1 : fibonacci(i - 1) + fibonacci(i - 2)
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts fibonacci line.to_i
end
file.close
