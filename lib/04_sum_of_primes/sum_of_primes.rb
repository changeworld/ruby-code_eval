# -*- coding: utf-8 -*-
require 'mathn'

palindrome = 0
cnt = 0
Prime.new.each do |prime|
  break unless cnt < 1000
  palindrome += prime
  cnt += 1
end
puts palindrome
