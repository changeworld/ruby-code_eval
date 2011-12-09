# -*- coding: utf-8 -*-

def fibonacci i
  case i
  when 0
    0
  when 1
    1
  else
    fibonacci(i - 1) + fibonacci(i - 2)
  end
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts fibonacci line.to_i
end
file.close
