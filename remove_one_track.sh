#!/bin/bash
#This script should remove one sound track from all files in supplied directory and rename originals afterwards.
#Launch it like this "bash remove_one_track.sh /myfolder1/.../myVideofolder"
#You must know track ID.
IFS=$';'
directory="$2";
trackid="$1";
echo "Hi. I am a script";
echo "I remove bad sound track $trackid and leave all other things be as they are";
echo "I might rename something inside mkv container accidently"
echo "I will create new files in $directory in pattern *.mkvnew and then replace old files with them by renaming new ones";
echo "===================================================";
ext="new"
#after -a comes bad audiotrack ID. Video is track 1.
   find "$2" -type f -name "*.mkv" | while read file; do
       echo $file;
       mkvmerge -o "$file$ext" -a "$trackid" "$file";
       mv -u "$file$ext" "$file";
   done
echo "===================================================";
echo "All done, check it out"
