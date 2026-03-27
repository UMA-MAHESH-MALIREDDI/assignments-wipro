#!/bin/bash
#1=on 0=off
DEBUG=1   

log() {
  if [ $DEBUG -eq 1 ]; then
    echo "[DEBUG] $1"
  fi
}

DIR="TestDir"

if [ -d "$DIR" ]; then
  echo "Error: Directory already exists"
else
  mkdir "$DIR"
  log "Directory created"
fi

for i in {1..10}
do
  file="$DIR/File$i.txt"
  
  if touch "$file" 2>/dev/null; then
    echo "File$i.txt" > "$file"
    log "Created $file"
  else
    echo "Error: Cannot create $file"
  fi
done

echo "Script completed"
