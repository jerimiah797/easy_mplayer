#!/bin/env ruby

require 'pathname'
$LOAD_PATH << File.join(File.dirname(Pathname.new(__FILE__).realpath),'../lib')
require 'easy_mplayer'

# play a file from the command line
raise "usage: #{$0} <file>" if ARGV.length != 1

# the absolute minimal script. Just hand over everything
# to mplayer, blocking until it's over
mplayer = MPlayer.new( :path => ARGV[0] )
mplayer.play_to_end

puts "all done!"
