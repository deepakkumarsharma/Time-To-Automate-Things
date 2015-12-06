#!/usr/bin/env ruby

=begin
  Hack UserName
=end
user_name = ENV['USER'].capitalize

=begin
  Let's welcome the user
=end
puts "-" * 38
puts "-" * 10 + "  Welcome " + "#{user_name}  " + "-" * 10
puts "-- Please enter youtube-video-link: --"
puts "-" * 38
puts "\n"

print "YouTube Link --> "
get_user_input = $stdin.gets.chomp

=begin
  Audio or Video
=end
puts "\n"
puts "-" * 45
puts "-- Do you VIDEO or AUDIO of following link --"
puts "-" * 45
puts "\n"
print "Decision --> " 
user_audio_video_input = $stdin.gets.chomp
av_input = user_audio_video_input.downcase


=begin
  Decision And Condition
=end
if (av_input == "video")
=begin
  Video Quality
=end
  puts "-" * 26
  puts "-- Choose Video Quality --"
  puts "-" * 26
  puts "\n"
  print "Low | Medium | High | Best --> "
  user_quality_input = $stdin.gets.chomp
  quality_input = user_quality_input.downcase
=begin
  Case According to Quality
=end    
  case quality_input
    when "low"
      system 'youtube-dl --format 160 ' + get_user_input    
    when "medium"
      system 'youtube-dl --format 136 ' + get_user_input    
    when "high"
      system 'youtube-dl --format 137 ' + get_user_input      
    else
      system 'youtube-dl --format 22 ' + get_user_input  
  end  
elsif (av_input == "audio")
  system 'youtube-dl --extract-audio --audio-format mp3 -f bestaudio --audio-quality 0 ' + get_user_input  
else
  puts "-------------- Wrong input ---------------"
  puts "-- Please choose between Audio or Video --"
  puts "-" * 42
end

if $? == 0
  puts "\n"
  puts "-" * 25
  puts "-- Download Completed --"
  puts "-" * 25
end