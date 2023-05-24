#!/bin/sh -eux

if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "${ID}" == 'rhel' ]; then
        echo "Deegistering with RHSM"
        subscription-manager unregister
        rm -f /root/.key
    fi
fi
