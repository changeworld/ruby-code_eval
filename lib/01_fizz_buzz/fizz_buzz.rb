# -*- coding: utf-8 -*-

def fizz_buzz(line)
  fizz, buzz, max = line.split(" ")
  fizz = fizz.to_i
  buzz = buzz.to_i
  max = max.to_i
  (1..max).each do |no|
    no = no.to_i
    if no % (fizz * buzz) == 0
      print "FB"
    elsif no % fizz == 0
      print "F"
    elsif no % buzz == 0
      print "B"
    else
      print no.to_s
    end
    print " "
  end
  puts
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  fizz_buzz line
end
file.close
