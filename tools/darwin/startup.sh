#!/bin/sh

SUPERTUX_BUNDLE="$(echo "$0" | sed -e 's/\/Contents\/MacOS\/SuperTux//')"
SUPERTUX_RESOURCES="$SUPERTUX_BUNDLE/Contents/Resources"

export "DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:$SUPERTUX_RESOURCES/MacOS"

exec "$SUPERTUX_RESOURCES/bin/supertux2"
