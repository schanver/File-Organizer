#!/bin/bash

downloads_dir="$HOME/Downloads"
pictures_dir="$HOME/Downloads/Downloaded_Images"
videos_dir="$HOME/Downloads/Downloaded_Videos"
docs_dir="$HOME/Downloads/Downloaded_Documents"

# Create directories if they don't exist
mkdir -p "$pictures_dir" "$videos_dir" "$docs_dir"

echo "Welcome, the decluttering process is beginning"
sleep 1
echo -n "Organizing image files."
for i in {1..2}; do
  sleep 1
  echo -n "."
done

find "$downloads_dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.webp" -o -iname "*.png" -o -iname "*.gif" \) -exec mv {} "$pictures_dir" \ > dev/null;

echo "Image files are organized."
echo -n "Organizing video files."
for i in {1..2}; do
  sleep 1
  echo -n "."
done

find "$downloads_dir" -type f \( -iname "*.mp4" -o -iname "*.flv" -o -iname "*.avi" -o -iname "*.amv" -o -iname "*.m4v" \) -exec mv {} "$videos_dir" \ > dev/null;

echo "Video files are organized."
echo -n "Organizing documents."
for i in {1..2}; do 
  sleep 1 
  echo -n "."
done

find "$downloads_dir" -type f \( -iname "*.pdf" -o -iname "*.csv" -o -iname "*.odt" -o -iname "*.doc" -o -iname "*.txt" -o -iname "*.tex" -o -iname "*.html" -o -iname "*.md" -o -iname "*.epub" -o -iname "*.docx" -o -iname "*.xlsx"  \) -exec mv {} "$docs_dir" \ > dev/null;

echo "Documents are organized."
echo "Decluttering process is completed."

exit
