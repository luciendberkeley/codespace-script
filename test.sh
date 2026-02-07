#!/usr/bin/env bash

Xvfb :1 -screen 0 1280x800x24 &
export DISPLAY=:1

i3 &

x11vnc -display :1 -forever -nopw -listen localhost -rfbport 5900 &

/usr/share/noVNC/utils/novnc_proxy --vnc localhost:5900 --listen 0.0.0.0:6080 &
