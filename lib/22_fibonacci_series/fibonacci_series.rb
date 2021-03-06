# -*- coding: utf-8 -*-
require 'matrix'

def fibonacci i
#  @cache ||= []
#  @cache[i] ||= (i < 2)? i : fibonacci(i - 2) + fibonacci(i - 1)

#  f0, f1 = 0, 1
#  i.times do
#    f0, f1 = f1, f0+f1
#  end
#  return f0
  (Matrix[[1,1],[1,0]]**i)[0,1]
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts fibonacci line.to_i
end
file.close