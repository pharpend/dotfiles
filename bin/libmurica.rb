#!/usr/bin/ruby

require 'json'
  
def update
   STDOUT.write "#{JSON.generate($info)},"
end

$info = []
$update_interval = 5
