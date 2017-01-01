for dir in *; do [ -d "$dir" ] && cp /path/file.txt "$dir" ; done
for dir in *; do [ -d "$dir" ] && cp Darkdreamer/layout-local.txt "$dir" ; done
for dir in *; do [ -d "$dir" ] && mv "$dir"/*.mp4 . ; done
for dir in *; do [ -d "$dir" ] && mv "$dir"/*.wmv . ; done
for dir in *; do [ -d "$dir" ] && rm -rf "$dir"/* ; done

for f in *.mp4 *.avi ; do d="${f%-*}" && mkdir "$d" && mv "$f" "$d/" ; done
