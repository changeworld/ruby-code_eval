# -*- coding: utf-8 -*-

def rightmost_char(str, t)
  str.rindex(t) || -1
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  str, t = line.strip.split(",")
  puts rightmost_char(str, t) if str && t
end
file.close
