#!/usr/bin/ruby

# Extract "Link: ..." field in a podcast rss feed, download

j = fork do
  exec "vlc #{$stdin.read.lines.select { |ln| ln.start_with? "Link: " }[0][6..-1]}"
end

Process.detach(j)
