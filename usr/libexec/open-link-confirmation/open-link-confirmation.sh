#!/bin/bash

## Copyright (C) 2012 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## See also:
## The Default Browser on Linux Debacle
## http://blog.codef00.com/2011/02/18/the-default-browser-on-linux-debacle/
export BROWSER="/usr/libexec/open-link-confirmation/open-link-confirmation"

if [ -z "$XDG_CONFIG_DIRS" ]; then
   XDG_CONFIG_DIRS="/etc:/etc/xdg:/usr/share"
fi
if [ -z "$XDG_DATA_DIRS" ]; then
   XDG_DATA_DIRS="/usr/local/share/:/usr/share/"
fi
if ! printf '%s\n' "$XDG_CONFIG_DIRS" | grep -- "/usr/share/open-link-confirmation/" >/dev/null 2>/dev/null; then
   export XDG_CONFIG_DIRS="/usr/share/open-link-confirmation/:$XDG_CONFIG_DIRS"
fi
if ! printf '%s\n' "$XDG_DATA_DIRS" | grep -- /usr/share/open-link-confirmation/xdg-override/ >/dev/null 2>/dev/null; then
   export XDG_DATA_DIRS="/usr/share/open-link-confirmation/xdg-override/:$XDG_DATA_DIRS"
fi
