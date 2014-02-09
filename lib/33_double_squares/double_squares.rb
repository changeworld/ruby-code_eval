# -*- coding: utf-8 -*-
require 'set'

File.open(ARGV[0]) do |file|
  lines = file.readline.to_i
  numbers = file.lines.map(&:to_i)

  squares = Set.new
  for i in 0..(Math.sqrt(numbers.max).floor)
    squares.add i * i
  end

  numbers.each do |number|
    number_paths = 0
    i = 0
    while i <= Math.sqrt(number/2)
      number_paths += 1 if squares.member?(number - i * i)
      i += 1
    end
    puts number_paths
  end
end