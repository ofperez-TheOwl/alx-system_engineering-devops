#!/usr/bin/env ruby
# Must match "hbtn, htn" but not "hbbtn"

puts ARGV[0].scan(/hb?tn/).join
