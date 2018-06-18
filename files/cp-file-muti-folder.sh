#!/usr/bin/env bash
for dir in *; do [ -d "$dir" ] && mv "$dir"/*.mp4 . ; done
for dir in *; do [ -d "$dir" ] && mv "$dir"/*.wmv . ; done
for dir in *; do [ -d "$dir" ] && rm -rf "$dir"/* ; done

# for all files in folder substring then create folder
for file in *.mp4 *.avi *.mkv ; do directory="${file:0:7}" && echo "$directory" ; done
for file in *.mp4 *.avi *.mkv ; do directory="${file:0:7}" && mkdir "$directory" ; done
for file in *.mp4 *.avi *.mkv ; do directory="${file:0:7}" && mv "$file" "$directory/" ; done
for file in *.jpg *.jpeg ; do directory="${file:0:7}" && mv "$file" "$directory/" ; done

for file in *.mp4 *.avi *.mkv *.wmv ; do directory="${file%.*.*}" && echo "$directory" ; done
for file in *.mp4 *.avi *.mkv *.wmv ; do directory="${file%.*.*}" && mkdir "$directory" ; done
for file in *.mp4 *.avi *.mkv *.wmv *.jpg *.jpeg ; do directory="${file%.*.*}" && mv "$file" "$directory/" ; done
for file in *.mp4 *.avi ; do directory="${file%.*.*}" && mkdir "$directory" && mv "$file" "$directory/" ; done

for f in *.mp4 *.avi *.mkv ; do d="${f%.*.*}" && echo "$d" ; done
for f in *.mp4 *.avi *.mkv ; do d="${f%.*.*}" && mkdir "$d" && mv "$f" "$d/" ; done
