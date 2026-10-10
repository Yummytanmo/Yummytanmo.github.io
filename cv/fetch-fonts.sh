#!/bin/sh
# Download the official Chinese serif fonts used by the Chinese resume.
set -eu
cv_font_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)/fonts
mkdir -p "$cv_font_dir"
cv_font_base=https://raw.githubusercontent.com/notofonts/noto-cjk/main/Serif
for cv_font_weight in Regular Bold; do
  cv_font_file="NotoSerifSC-$cv_font_weight.otf"
  if [ ! -s "$cv_font_dir/$cv_font_file" ]; then
    curl -fL --retry 2 --connect-timeout 10 --max-time 120 \
      -o "$cv_font_dir/$cv_font_file.download" \
      "$cv_font_base/SubsetOTF/SC/$cv_font_file"
    mv "$cv_font_dir/$cv_font_file.download" "$cv_font_dir/$cv_font_file"
  fi
done
