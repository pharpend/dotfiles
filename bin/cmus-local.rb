#!/usr/bin/env ruby

# cmus-local - a local client for cmus (compared to cmus-remote).

def cmusQueryLines
  cmq = `cmus-remote -Q`.lines
  if [] == cmq then
    puts "off"
    exit
  end
  cmq
end

status = cmusQueryLines[0].strip.split[1..-1].join(" ")

if "stopped" == status then
  puts status
  exit
end

artist = cmusQueryLines[6].strip.split[2..-1].join(" ")
song = cmusQueryLines[4].strip.split[2..-1].join(" ")

puts "#{status} \"#{song}\" by #{artist}"
