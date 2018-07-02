#!/usr/bin/env bash

# Following command to check current UTI
# duti -x <ext>

# Source code
duti -s com.sublimetext.3 .py   all
duti -s com.sublimetext.3 .sh   all
duti -s com.sublimetext.3 .txt  all
duti -s com.sublimetext.3 .srt  all
duti -s com.sublimetext.3 .m    all
duti -s com.sublimetext.3 .rb   all
duti -s com.sublimetext.3 .tex  all
duti -s com.sublimetext.3 .bib  all
duti -s com.sublimetext.3 .c    all
duti -s com.sublimetext.3 .cpp  all
duti -s com.sublimetext.3 .h    all
duti -s com.sublimetext.3 .go   all

# Notes
duti -s com.sublimetext.3 .md   all


# Videos
duti -s io.mpv .mp4 all
duti -s io.mpv .m4v all
duti -s io.mpv .mkv all
duti -s io.mpv .avi all
duti -s io.mpv .mov all

# eBooks
duti -s net.kovidgoyal.calibre .epub all
duti -s net.kovidgoyal.calibre .mobi all
