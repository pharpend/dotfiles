#!/usr/bin/ruby

x = Random.new.rand(2)
case x
when 0
  puts "Heads"
else
  puts "Tails"
end
