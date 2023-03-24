#!/bin/bash

set -e

while true
do
  ffmpeg -re -i https://live.y2m3u8.workers.dev/stream/7tNtU5XFwrU/master.m3u8 \
    -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 \
    -flags +global_header -bsf:a aac_adtstoasc -bufsize 12M \
    -f flv rtmp://ivory-ingest.getloconow.com:1935/stream/live_4574OQYW90_5f54e888-2113-4987-93f0-5992793cb58a
done
