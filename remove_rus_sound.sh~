#!/bin/bash
#This script should remove russian sound from all files in directory and rename originals afterwards.
IFS=$';'
directory="$1";
echo "Hi. I am a script";
echo "I remove Russian sound and leave Japanese sound be";
echo "I will rename old files in $directory in pattern old+filename";

file= $(find "$directory" -type f -name "*.mkv" -or -name "*.MKV");
echo ">> $file";
ext="new"
   for MKVfile in $file; do
         echo "Processing $MKVfile"; 
         mkvmerge -v -o "$MKVfile$ext" -a 3 "$MKVfile"
   done
echo "All done, check it out"
