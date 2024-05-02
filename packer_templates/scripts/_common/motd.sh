#!/bin/sh -eux

    MOTD_CONFIG='/etc/motd'

    touch $MOTD_CONFIG
    chmod 0777 $MOTD_CONFIG
    cat << 'BENTO' >> $MOTD_CONFIG

    This system is built by the Crunchy Postgres Automation project at
                                _               _       _
      ___ _ __ _   _ _ __   ___| |__  _   _  __| | __ _| |_ __ _
     / __| '__| | | | '_ \ / __| '_ \| | | |/ _` |/ _` | __/ _` |
    | (__| |  | |_| | | | | (__| | | | |_| | (_| | (_| | || (_| |
     \___|_|   \__,_|_| |_|\___|_| |_|\__, |\__,_|\__,_|\__\__,_|
                                      |___/

BENTO

chmod 0755 $MOTD_CONFIG
