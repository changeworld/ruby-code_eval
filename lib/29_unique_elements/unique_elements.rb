# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts line.split(",").map {|no| no.to_i}.uniq.join ','
end
file.close
