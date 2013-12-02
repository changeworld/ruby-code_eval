# -*- coding: utf-8 -*-

def email_valid?(str)
  email_regexp = /^[a-zA-Z0-9\._-]+@[a-zA-Z0-9\.-]+\.[a-zA-Z]{2,4}$/
  str.match(email_regexp) ? "true" : "false"
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts email_valid?(line)
end
file.close
