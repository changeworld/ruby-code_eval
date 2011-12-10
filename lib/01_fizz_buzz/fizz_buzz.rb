# -*- coding: utf-8 -*-

def fizz_buzz(line)
  fizz, buzz, max = line.split(" ").map {|str| str = str.to_i}
  (1..max).map {|int| int = int.to_i}.each do |num|
    print num % (fizz * buzz) == 0 ? "FB" : num % fizz == 0 ? "F" : num % buzz == 0 ? "B" : num.to_s
    print " "
  end
  puts
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  fizz_buzz line
end
file.close
