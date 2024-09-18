#!/bin/bash
set -euo pipefail
set -x
ROOT_PATH="$(realpath "$(dirname "$0")")" 
mkdir -p "$HOME/.local/share/icons/hicolor/scalable/apps/"
cp "$ROOT_PATH/lutrisview.svg" "$HOME/.local/share/icons/hicolor/scalable/apps/"
mkdir -p "$HOME/.local/share/applications"
cp "$ROOT_PATH/lutrisview.desktop" "$HOME/.local/share/applications/"
mkdir -p "$HOME/.local/bin"
cp "$ROOT_PATH/lutrisview" "$HOME/.local/bin/"
