# -*- coding: utf-8 -*-

def remove_characters(line)
  sentence, removes = line.split(',').map {|str| str = str.strip}
  puts removes.chars.inject(sentence) {|str, char| str.delete char}
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  remove_characters(line)
end
file.close
