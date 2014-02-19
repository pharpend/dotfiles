#!/usr/bin/ruby

puts File.read(File.expand_path ARGV[0]).split("\n").map {|x| x.strip }.reject {|x| x.start_with?("#") or x.empty? }.size
