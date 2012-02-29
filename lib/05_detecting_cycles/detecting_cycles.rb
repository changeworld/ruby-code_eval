# -*- coding: utf-8 -*-

def detect_cycle(line)
  stack = line.split(" ")
  (2..stack.size/2).each do |i|
    before_cycle = stack[stack.size - i, i]
    next_cycle = stack[stack.size - (i * 2), i]
    return before_cycle.join(" ")  if before_cycle == next_cycle
  end
  ''
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts detect_cycle(line)
end
file.close
