#!/usr/bin/env ruby
# 
# Renames restored syncthing backups to their old filename.
# 
# Syncthing names its backups file~YYYYMMDD-NNNNNN.txt
# 
# This renames them back to file.txt. For use after you've restored your backup.
# 
# Usage: unbackup.rb DIR

require "pp"

ARGV.each do |dnom| 
  dnom_abs = File.absolute_path(dnom)
  rgx = /\~[0-9]{8}-[0-9]{6}/
  files_in_dir = Dir.glob("#{dnom_abs}/**/*").map {|x| File.absolute_path(x)}.select {|x| x =~ rgx}
  new_files = files_in_dir.map {|x| [x, x.gsub(rgx, "")] }

  new_files.each do |x| 
    src = x[0]
    dest = x[1]
    File.rename(src, dest)
    puts "#{src} => #{dest}"
  end
end
