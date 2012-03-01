# -*- coding: utf-8 -*-

@tree = Hash::new
@tree[3] = 8
@tree[8] = 30
@tree[10] = 20
@tree[20] = 8
@tree[29] = 20
@tree[52] = 30

def ancestor(num, ancestors=[])
  if (@tree[num] != nil)
    ancestors << @tree[num]
    ancestor(@tree[num], ancestors)
  end
  ancestors
end

def lowest_common_ancestor(line)
  left, right = line.split(' ')
  puts (ancestor(left.to_i) & ancestor(right.to_i)).first
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  lowest_common_ancestor(line)
end
file.close
