# -*- coding: utf-8 -*-

def push(num)
  @stack ||= []
  @stack << num
end

def pop
  res = @stack.delete_at(@stack.size - 1)
  @stack.delete_at(@stack.size - 1)
  res
end

def stack_implementation(line)
  line.split(' ').each {|num| push(num.to_i)}
  pop_vals = []
  begin
    res = pop
    pop_vals << res
  end while res
  puts pop_vals.join(' ')
end

filename = ARGV[0]
file = File.open(filename).each do |line|
  stack_implementation(line)
end
file.close
