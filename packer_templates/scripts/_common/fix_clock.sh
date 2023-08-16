#!/bin/sh -eux

timedatectl set-local-rtc 0

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "${ID}" == 'ubuntu' ]; then
        echo "Installing chrony"
        apt -y install chrony
        echo "Adjusting chrony config"
        sed -i 's/3$/-1' /etc/chrony.conf
        echo "Starting chrony"
        systemctl enable --now chrony
    else
        echo "Installing chrony"
        yum -y install chrony
        echo "Adjusting chrony config"
        sed -i 's/3$/-1' /etc/chrony.conf
        echo "Starting chrony"
        systemctl enable --now chronyd
    fi
fi
