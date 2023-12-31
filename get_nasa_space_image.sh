#!/bin/bash

# Set the directory to store the NASA images
NASA_IMAGE_DIR="$HOME/Pictures/NASA_Space_Images"

# Create the directory if it doesn't exist
mkdir -p "$NASA_IMAGE_DIR"

# Fetch the latest image from NASA's website
IMAGE_URL=$(curl -s "https://apod.nasa.gov/apod/astropix.html" | grep -oP 'href="\K[^"]+\.jpg' | head -n 1)
IMAGE_NAME=$(basename "$IMAGE_URL")
curl -s -o "$NASA_IMAGE_DIR/$IMAGE_NAME" "https://apod.nasa.gov/apod/$IMAGE_URL"

# Set the fetched image as your background
feh --bg-fill "$NASA_IMAGE_DIR/$IMAGE_NAME"

