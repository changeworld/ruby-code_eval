# -*- coding: utf-8 -*-

def bit_positions(line)
  n, p1, p2 = line.split(",")
  bits = []
  n = n.to_i
  p1 = p1.to_i
  p2 = p2.to_i
  while (n >= 1)
    bits << n % 2
    n = (n / 2).to_i
  end
  bits = bits.reverse
  puts "true" if bits[(bits.size) - p1] == bits[(bits.size - p2)]
  puts "false" unless bits[bits.size - p1] == bits[bits.size - p2]
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  bit_positions line
end
file.close
