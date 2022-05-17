search_dir="/home/pedro/Downloads"
mkdir "/home/pedro/Downloads/fixed_videos"
for entry in "$search_dir"/*
do
    #echo "$entry"_fix.mp4
    ffmpeg -seek_timestamp 1 -ss 0 -strict experimental -i "$entry" -strict -2 "$entry"_fix.mp4
    mv "$entry"_fix.mp4 "/home/pedro/Downloads/fixed_videos/"
    #rm "$entry"
done
