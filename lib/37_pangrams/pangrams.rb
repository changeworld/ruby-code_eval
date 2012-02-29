# -*- coding: utf-8 -*-

ALPHABET = [*'a'..'z']

def unused_letters(line)
  diff = ALPHABET - line.downcase.split(//).uniq
  diff.size.zero? ? 'NULL' : diff.join
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  puts unused_letters(line)
end
file.close
