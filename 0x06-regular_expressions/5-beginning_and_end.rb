#!/usr/bin/env ruby
# Must match any 3-char string that starts with "h" and ends with "n"

puts ARGV[0].scan(/h.n/).join
