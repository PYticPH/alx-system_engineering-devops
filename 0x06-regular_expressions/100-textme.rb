#!/usr/bin/env ruby
ARGV[0].scan(/\[from:(\+?\d{11}|\w+)\]\s+\[to:(\+?\d{11}|\w+)\]\s+\[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/).join
puts "#{$1},#{$2},#{$3}"
