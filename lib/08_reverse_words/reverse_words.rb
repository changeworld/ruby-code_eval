# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts line.split(" ").reverse.join(" ")
end
file.close
