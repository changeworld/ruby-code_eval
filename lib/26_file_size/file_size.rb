# -*- coding: utf-8 -*-

filename = ARGV[0]
file = File.open(filename)
puts file.size
file.close