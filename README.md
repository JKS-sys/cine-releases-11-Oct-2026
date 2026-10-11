# Cine

[![Release](https://img.shields.io/github/v/release/JKS-sys/cine-releases-11-Oct-2026?label=release&color=d9a441)](https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/JKS-sys/cine-releases-11-Oct-2026/total?color=3cc8e8)](https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases)
![macOS](https://img.shields.io/badge/macOS-11%2B-62d26f) ![Windows](https://img.shields.io/badge/Windows-10%2B-6cb6ff) ![Linux](https://img.shields.io/badge/Linux-x64%20%7C%20ARM-a8a2ff)

**A tiny media player (under 5 MB) that plays almost anything and remembers every setting.**
By Jagadeesh Kumar S, creator — [youtube.com/@JKS-sys](https://www.youtube.com/@JKS-sys) · [ipconfig.co.network/cine](https://ipconfig.co.network/cine)

## What it does
- **Every format** — the system decodes what it can; everything else (MKV, AVI, WMV, FLV, AC-3, DTS…) streams through ffmpeg, copied when possible, converted when needed.
- **Settings that save themselves** — repeat (off / this file / playlist), subtitle font, size, colours, outline and position, volume, equaliser, speed and every plugin option are written to disk as you change them and restored next launch. Each file remembers its position, tracks, subtitle delay and VR view.
- **Thumbnails** — previews on the seek bar and a clickable grid of 10–100 frames.
- **Skip Intro** — from chapter titles, chapter timing, audio fingerprints shared across episodes, or marks you set once per series.
- **Recorder** — save a clip (MP4, MOV, GIF, M4A, MP3), with a 9:16 crop for Shorts and Reels.
- **Bilingual subtitles** — a second subtitle track, or an AI translation from a local model (Ollama, LM Studio) or any OpenAI-compatible service.
- **Trakt** — scrobbles movies and episodes as you watch.
- **User scripts** — automate the player with JavaScript using IINA's `iina` API.
- **VR → 2D** — 180°/360°, side-by-side or over-under, equirectangular, fisheye or cubemap, flattened so you can look around with the mouse.
- Equaliser with presets, volume to 200 %, A-B loop, bookmarks, chapters, picture-in-picture, screenshots, playlists, history, music mode.

## Install
| | |
|---|---|
| macOS (Apple silicon) | [Cine_0.1.2_aarch64.dmg](https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases/download/v0.1.2/Cine_0.1.2_aarch64.dmg) |
| macOS (Intel) | [Cine_0.1.2_x64.dmg](https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases/download/v0.1.2/Cine_0.1.2_x64.dmg) |
| Windows, Linux | on the [release page](https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases/latest) |

```sh
# macOS, one line
curl -fsSL https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases/download/v0.1.2/Cine_0.1.2_$(uname -m | sed -e s/arm64/aarch64/ -e s/x86_64/x64/).dmg -o /tmp/Cine.dmg && hdiutil attach -quiet /tmp/Cine.dmg && cp -R /Volumes/Cine/Cine.app /Applications/ && hdiutil detach -quiet /Volumes/Cine && xattr -cr /Applications/Cine.app
```

```sh
# Homebrew, no tap needed
curl -fsSLO https://raw.githubusercontent.com/JKS-sys/cine-releases-11-Oct-2026/main/cine.rb && brew install --cask ./cine.rb
```

For the widest format support also install ffmpeg: `brew install ffmpeg` · `winget install Gyan.FFmpeg` · `sudo apt install ffmpeg`.

## Release notes
See the [releases](https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases).

© Jagadeesh Kumar S. All rights reserved.
