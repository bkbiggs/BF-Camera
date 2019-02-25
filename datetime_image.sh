#!/bin/bash


   convert "$1" -font FreeSans \
      -pointsize 48 -fill white -annotate +800+1000  \
      %[exif:DateTimeOriginal] "$1"

   