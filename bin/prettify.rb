#!/usr/bin/env ruby

require 'json'

print JSON.pretty_generate Hash[(JSON.parse STDIN.read).sort]
