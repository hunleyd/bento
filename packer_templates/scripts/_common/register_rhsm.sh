#!/bin/sh -eux

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "${ID}" == 'rhel' ]; then
        echo "Registering with RHSM"
        subscription-manager register --activationkey=ha-vagrant-testing --org=$(cat /root/.key) --force
    fi
fi
