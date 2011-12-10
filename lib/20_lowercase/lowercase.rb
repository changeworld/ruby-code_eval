# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename).each {|line| puts line.downcase}
file.close
