#!/usr/bin/env bash
# to rename files with leading zero
# for a in [0-9]*.txt; do
# mv $a `printf %04d.%s ${a%.*} ${a##*.}`
# done
ls *.jpg > stills.txt
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o tlcam.avi -mf type=jpeg:fps=24 mf://@stills.txt
rm stills.txt
