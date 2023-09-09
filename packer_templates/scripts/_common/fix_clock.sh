#!/bin/sh -eux

timedatectl set-local-rtc 0

if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "Installing chrony"
    if [ "${ID}" = 'ubuntu' ]; then
        apt -y install chrony
    else
        yum -y install chrony
    fi
    echo "Adjusting chrony config"
    sed -i 's/3$/-1/' /etc/chrony.conf || sed -i 's/3$/-1/' /etc/chrony/chrony.conf
    sed -i 's/1\.0/0\.1/' /etc/chrony.conf || sed -i 's/1\.0/0\.1/' /etc/chrony/chrony.conf
    echo "Starting chrony"
    systemctl enable --now chronyd || systemctl enable --now chrony
fi
