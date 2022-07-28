#!/usr/bin/env ruby
# must parse logfile and return [sender],[receiver],[flags]

puts ARGV[0].scan(/\[(?:from:|to:|flags:)(.*?)\]/).join(",")
