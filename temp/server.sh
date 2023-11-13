#!/bin/bash



ffmpeg -v verbose -re -listen 1 -i rtmp://127.0.0.1:33550 \
      -c:v libx264 -c:a aac -ac 1 -strict -2 -crf 18 \
      -profile:v baseline -maxrate 400k -bufsize 1835k -pix_fmt yuv420p -flags -global_header \
      -f hls \
      -hls_time 2 \
      -hls_list_size 8 \
      -hls_playlist_type event \
      -hls_flags split_by_time \
      -hls_segment_type mpegts \
      -var_stream_map "v:0,a:0" ./test/stream_%v.m3u8 \
      -hls_segment_filename ./test/stream_%v/data%02d.ts \
      -master_pl_name ./test/master.m3u8
      # ./test/streamName.m3u8


# ffmpeg -v verbose -listen 1 -i rtmp://127.0.0.1:33550 \
#       -c:v libx264 -c:a aac -ac 1 -strict -2 -crf 18 -profile:v baseline -maxrate 400k -bufsize 1835k -pix_fmt yuv420p \
#       -f hls -hls_time 1 -hls_list_size 8 -hls_playlist_type event -hls_flags split_by_time ./test/stream.m3u8
