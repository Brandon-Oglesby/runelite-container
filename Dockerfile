# Use OpenJDK 17 Debian-based slim image as the base image
FROM openjdk:17-slim

# Install necessary packages
RUN apt-get update && apt-get install -y \
    wget \
    bash \
    xvfb \
    xpra \
    fluxbox \
    xterm \
    pulseaudio \
    dbus \
    fonts-dejavu \
    && rm -rf /var/lib/apt/lists/*

# Ensure /tmp/.X11-unix directory exists with correct permissions
RUN mkdir -p /tmp/.X11-unix && \
    chmod 1777 /tmp/.X11-unix && \
    chown root:root /tmp/.X11-unix

# Install Runelite
ENV RUNELITE_VERSION=2.7.2
RUN wget https://github.com/runelite/launcher/releases/download/${RUNELITE_VERSION}/RuneLite.jar -O /opt/runelite.jar

# Create a non-root user
RUN useradd -ms /bin/bash runelite

# Copy the startup script
COPY start.sh /home/runelite/start.sh
RUN chmod +x /home/runelite/start.sh

USER runelite
WORKDIR /home/runelite

# Expose XPRA port
EXPOSE 14500

# Define the default command
CMD ["./start.sh"]
