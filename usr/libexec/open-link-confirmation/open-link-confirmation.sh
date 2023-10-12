#!/bin/bash

## Copyright (C) 2012 - 2023 ENCRYPTED SUPPORT LP <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## See also:
## The Default Browser on Linux Debacle
## http://blog.codef00.com/2011/02/18/the-default-browser-on-linux-debacle/
export BROWSER="/usr/libexec/open-link-confirmation/open-link-confirmation"

if [ -z "$XDG_CONFIG_DIRS" ]; then
   XDG_CONFIG_DIRS=/etc/xdg
fi
if ! echo "$XDG_CONFIG_DIRS" | grep --quiet /usr/share/open-link-confirmation/ ; then
   export XDG_CONFIG_DIRS=/usr/share/open-link-confirmation/:$XDG_CONFIG_DIRS
fi
