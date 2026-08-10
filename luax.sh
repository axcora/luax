#!/bin/sh
if command -v lua55 >/dev/null 2>&1; then LUA=lua55
elif command -v lua54 >/dev/null 2>&1; then LUA=lua54
elif command -v lua >/dev/null 2>&1; then LUA=lua
else
  echo "[ERROR] Lua tidak ditemukan!"
  exit 1
fi

case "$1" in
    start)
        $LUA start.lua
        ;;
    build)
        $LUA build.lua
        ;;
    all)
        $LUA build.lua
        $LUA start.lua
        ;;
    *)
        echo "Usage:./luax.sh [command]"
        echo ""
        echo "Commands:"
        echo " build - Build static site"
        echo " start - Start + hot reload"
        echo " all - Build + Start"
        ;;
esac