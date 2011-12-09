# -*- coding: utf-8 -*-

def reverse_words(line)
  puts line.split(" ").reverse.join(" ")
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  reverse_words line
end
file.close
