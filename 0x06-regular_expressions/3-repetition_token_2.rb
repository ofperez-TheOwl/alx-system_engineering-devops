#!/usr/bin/env ruby
# Must match "hbtn, hbttn, hbtttn, hbttttn" but not "hbn"

puts ARGV[0].scan(/hbt+n/).join
