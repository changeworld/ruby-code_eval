# -*- coding: utf-8 -*-

def trailing_string(line)
  target, search = line.split(',').map {|str| str = str.strip}
  target[/#{search}$/] ? 1 : 0
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts trailing_string(line)
end
file.close