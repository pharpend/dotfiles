#!/usr/bin/ruby

# Extract "Link: ..." field in a podcast rss feed, download

`wget #{$stdin.read.lines.select { |ln| ln.start_with? "Link: " }[0][6..-1]}`

