#!/bin/sh -eux

timedatectl set-local-rtc 0

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "${ID}" == 'ubuntu' ]; then
        echo "Installing chrony"
        apt -y install chrony
        echo "Starting chrony"
        systemctl enable --now chrony
    fi
fi
