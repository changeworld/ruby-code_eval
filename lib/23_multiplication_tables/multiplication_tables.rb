# -*- coding: utf-8 -*-

(1..12).each do |x|
  puts (1..12).map {|y| format '%4i', x * y}.join
end
