# Use the base image with Novnc server and PulseAudio
FROM thuonghai2711/ubuntu-novnc-pulseaudio:22.04

# Set environment variables
ENV VNC_PASSWD=password \
    PORT=10000 \
    AUDIO_PORT=1699 \
    WEBSOCKIFY_PORT=6900 \
    VNC_PORT=5900 \
    SCREEN_WIDTH=1024 \
    SCREEN_HEIGHT=768 \
    SCREEN_DEPTH=24

# Expose necessary ports
EXPOSE $PORT $AUDIO_PORT $WEBSOCKIFY_PORT $VNC_PORT

# Start Novnc server
CMD ["/usr/local/bin/dockerstartup.sh"]
