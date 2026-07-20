#!/bin/sh
USER=lvregyly
HOST=68.65.122.195
DIR=/home/lvregyly/stevebr.com   # the directory where your website files should go

rm -rf public && hugo --minify && rsync -avz -e 'ssh -p 21098' --delete --stats --progress public/ ${USER}@${HOST}:${DIR} # this will delete everything on the server that's not in the local public folder 

exit 0