This is a bash script.

*****What do you get?******
1)All *.mkv files in specified folder get remuxed. Specified sound track gets removed.
2)Original files get replace by remuxed files one by one.

*****What do you need?*****
1) Bash
2) mkvtoolnix
3) To know track ID of audio to be removed. Usually video has ID=1, first audio ID=2.
4) Backup of your movies (preferrable)
5) As much free space as the size of biggest file + 10%.
6) R/W access to folder.

*****How do you launch?****
sudo bash remove_one_track.sh 3 "/folder1/videofolder"

Line above removes track 3 from all *.mkv in /folder1/videofolder
It does not go deeper in folder structure.
DON'T FORGET QUOTES! Or you will get in trouble with spaces.
Also folders with newline in name might not work too.
