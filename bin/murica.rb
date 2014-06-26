#!/usr/bin/ruby
# 
# sends system information to i3bar

load File.expand_path(File.dirname(__FILE__) + "/libmurica.rb")

STDOUT.write "{\"version\":1}\n"
STDOUT.write "[[],"

while true
  begin
    load File.expand_path("~/.murica.rb")
  rescue
    error_msg = { full_text: "THERE IS AN ERROR IN ~/.murica.rb. FIX IT!",
                  color: "#ff"}
    STDOUT.write "[#{JSON.pretty_generate error_msg}],"
    $update_interval=10
  end
  sleep $update_interval
end
