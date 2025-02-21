#!/bin/sh -eux

if [ -e /etc/environment ]; then
    echo SYSTEMD_LESS=FRXMK >> /etc/environment
fi
