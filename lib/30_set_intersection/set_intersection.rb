# -*- coding: utf-8 -*-

def set_intersection (line)
  a, b = line.split(";")
  (a.split(",") & b.split(",")).join ','
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts set_intersection(line)
end
file.close
