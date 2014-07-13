#!/usr/bin/env ruby

# This kills all but the most 
pnoms = ARGV
pnoms.each do |pnom| 
  pids = `pidof #{pnom}`.split.map { |x| x.to_i }[0 .. -2].join(" ")
  puts "#{pnom}: killing #{pids}"
  `kill #{pids}`
end
