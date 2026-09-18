#!/bin/sh

# Ganti UUID dari environment variable
if [ -n "$UUID" ]; then
  sed -i "s/UUID_GANTI_INI/$UUID/g" /etc/xray/config.json
fi

# Ganti path kalau mau
if [ -n "$WS_PATH" ]; then
  sed -i "s|/vmess|$WS_PATH|g" /etc/xray/config.json
fi

# Railway pakai PORT environment
if [ -n "$PORT" ]; then
  sed -i "s/8080/$PORT/g" /etc/xray/config.json
fi

exec xray -config /etc/xray/config.json
