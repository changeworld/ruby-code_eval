# -*- coding: utf-8 -*-

int = 0
filename = ARGV[0]
file = File.open(filename).each do |line|
  int += line.to_i
end
file.close
puts int
