#!/usr/bin/env ruby

user_name = ENV['USER'].capitalize

puts "-" * 38
puts "-" * 10 + "  Welcome " + "#{user_name}  " + "-" * 10
puts "-- Please enter youtube-video-link: --"
puts "-" * 38

print "YouTube Link --> "
get_user_input = $stdin.gets.chomp

exec 'youtube-dl --extract-audio --audio-format mp3 -f bestaudio --audio-quality 0 ' + get_user_input

puts "-" * 25
puts "-- Download Completed -- "
puts "-" * 25