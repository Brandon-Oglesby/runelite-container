#!/bin/bash

# Set display number
DISPLAY_NUM=10

# Start Xvfb
Xvfb :$DISPLAY_NUM -screen 0 1024x768x16 &

# Start Fluxbox
fluxbox -display :$DISPLAY_NUM &

# Start XPRA server
xpra start :$DISPLAY_NUM --bind-tcp=0.0.0.0:14500 --html=on --exit-with-children --start-child="java -jar /opt/runelite.jar"