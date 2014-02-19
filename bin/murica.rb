#!/usr/bin/ruby
# 
# sends system information to i3bar

require 'json'
  
def update
   STDOUT.write "#{JSON.generate($info)},\n"
end

$info = []
$update_interval = 5

STDOUT.write "{\"version\":1}\n"
STDOUT.write "[[],\n"
while true
  begin
    load File.expand_path("~/.murica.rb")
  rescue
    error_msg = { full_text: "THERE IS AN ERROR IN ~/.murica.rb. FIX IT!",
                  color: "#ff"}
    STDOUT.write "[#{JSON.generate error_msg}],"
    next
  end
  sleep $update_interval
end
