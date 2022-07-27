#!/usr/bin/env ruby
# Must match "hbn, hbtn, hbtttttn" but not "hbon"

puts ARGV[0].scan(/hbt*n/).join
