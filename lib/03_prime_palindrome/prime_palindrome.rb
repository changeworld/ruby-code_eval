# -*- coding: utf-8 -*-
require 'mathn'

palindrome = nil
Prime.new.each do |prime| break unless prime < 1000; palindrome = prime if prime.to_s == prime.to_s.reverse end
puts palindrome
