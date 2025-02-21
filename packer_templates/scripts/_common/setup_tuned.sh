#!/bin/sh -eux

if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "Installing tuned"
    if [ "${ID}" = 'ubuntu' ]; then
        apt -y install tuned
    else
        yum -y install tuned
    fi
    echo "Start tuned"
    systemctl enable --now tuned
    echo "Adjusting tuned config"
    tuned-adm profile virtual-guest
