#!/usr/bin/env bash

echo "Starting virtual display..."
Xvfb :1 -screen 0 1920x1200x24 &

export DISPLAY=:1

echo "Starting i3 window manager..."
i3 &

echo "Starting VNC server..."
x11vnc -display :1 -forever -nopw -listen localhost -rfbport 5900 &


echo "Starting noVNC on port 6080..."
/usr/share/noVNC/utils/novnc_proxy --vnc localhost:5900 --listen 0.0.0.0:6080 &

echo ""
echo "GUI environment is ready!"
echo "Go to the Ports tab, set port 6080 to Public, and open the link."

# Keep container alive
wait
