#!/bin/sh
set -e

CONFIG_FILE="/app/webroot/js/config.js"

if [ -z "$MAPBOX_API_KEY" ]; then
  echo "WARNING: MAPBOX_API_KEY is not set. Radar will not work."
else
  echo "Injecting Mapbox API key..."
  sed -i "s|YOUR_API_KEY|${MAPBOX_API_KEY}|g" "$CONFIG_FILE"
fi

exec "$@"
