echo "Please enter youtube-video-link: "
read input_music_link
youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $input_music_link

echo "########################"
echo "## Download Completed ##"
echo "########################"
