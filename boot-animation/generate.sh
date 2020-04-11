#!/bin/bash
ffmpeg -r 20 -y -loop 1 -i bg.png -ss 0 -t 2 -loop 1 -i void-logo-transparent.png -ss 0 -t 2 -filter_complex " \
[0:v]scale=w=1920:h=1080 [bg]; \
[1:v] rotate=a=180*(1- ((t/2-1)^4)*cos(t/2 * PI * 2.5))*PI/180:c=none:ow=1920:oh=1080, setsar=1 [fg]; \
[bg][fg]overlay=shortest=1[v] \
" -map "[v]" frames/voidboot-%03d.png
