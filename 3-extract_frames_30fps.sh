#!/usr/bin/env bash
# extract_frames_30fps.sh - extract 30 frames per second from every reference
# video and write a manifest with real counts.
#
# Usage:  ./extract_frames_30fps.sh [references_dir] [output_dir]
# Defaults: references_dir=./references  output_dir=./frames_30fps
#
# How fps=30 behaves (this is why the manifest matters):
#   source < 30 fps  -> ffmpeg duplicates frames to reach 30/sec (repeated images, no new detail)
#   source = 30 fps  -> 1 frame per 1/30s tick
#   source > 30 fps  -> frames are dropped to fit 30/sec (some motion detail lost)
# The manifest records source_fps, frames_written and the duplicate/drop note per video,
# so whoever analyses the frames knows exactly what they are looking at.
set -u
SRC="${1:-./references}"
OUT="${2:-./frames_30fps}"
mkdir -p "$OUT"
MANIFEST="$OUT/manifest.csv"
echo "file,source_fps,width,height,duration_s,frames_written,note" > "$MANIFEST"
for f in "$SRC"/*.mp4; do
  base=$(basename "$f" .mp4)
  dir="$OUT/$base"
  mkdir -p "$dir"
  sfps=$(ffprobe -v error -select_streams v:0 -show_entries stream=avg_frame_rate -of csv=p=0 "$f")
  wh=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 "$f")
  dur=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$f")
  # filenames carry the timestamp (seconds, 3 decimals) of the source moment shown
  ffmpeg -nostdin -loglevel error -i "$f" \
    -vf "fps=30,showinfo" -vsync passthrough \
    -frame_pts 1 "$dir/frame_%06d.jpg" 2>/dev/null || \
  ffmpeg -nostdin -loglevel error -i "$f" -vf fps=30 -frame_pts 1 "$dir/frame_%06d.jpg"
  n=$(ls "$dir" | wc -l)
  sdec=$(awk "BEGIN{printf \"%.3f\", $sfps}")
  note="1:1 with 30fps timeline"
  awk "BEGIN{exit !($sdec < 29.5)}"  && note="source <30fps: some frames are duplicated images"
  awk "BEGIN{exit !($sdec > 30.5)}"  && note="source >30fps: frames dropped to fit 30/sec"
  echo "$base,$sdec,$wh,$dur,$n,$note" | sed 's/,,/,/g' >> "$MANIFEST"
  echo "$base: source ${sdec}fps -> $n frames ($note)"
done
echo "Manifest: $MANIFEST"
