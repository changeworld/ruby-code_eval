# -*- coding: utf-8 -*-

def mth_to_last_element(line)
  elm = line.split(' ')
  num = elm.delete_at(elm.size - 1)
  if elm[elm.size - num.to_i]
    puts elm[elm.size - num.to_i]
  end
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  mth_to_last_element(line)
end
file.close
