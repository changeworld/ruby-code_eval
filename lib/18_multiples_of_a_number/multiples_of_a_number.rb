# -*- coding: utf-8 -*-

def multiples_of_a_number(line)
  x, n = line.split(",").map {|str| str = str.to_i}
  while (n <= x)
    n += n
  end
  puts n
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  multiples_of_a_number line
end
file.close
