#!/usr/bin/ruby

require 'json'
  
def update
   STDOUT.write "#{JSON::pretty_generate($info)},"
end

$info = []
$update_interval = 5
