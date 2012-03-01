# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts line.chars.find {|char| line.count(char) == 1}
end
file.close
