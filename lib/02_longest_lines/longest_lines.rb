# -*- coding: utf-8 -*-

lines = []
filename = ARGV[0]
file = File.open(filename).each_line do |line|
  lines << line
end
file.close
longest = lines.sort {|a, b| a.size <=> b.size}.reverse[0...(lines[0].to_i)]
longest.each do |line|
  puts line.strip
end
