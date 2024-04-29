#!/bin/sh -eux

touch /etc/motd
chmod 0777 /etc/motd
cat << 'BENTO' >> /etc/motd

This system is built by the Crunchy Postgres Automation project at
                            _               _       _
  ___ _ __ _   _ _ __   ___| |__  _   _  __| | __ _| |_ __ _
 / __| '__| | | | '_ \ / __| '_ \| | | |/ _` |/ _` | __/ _` |
| (__| |  | |_| | | | | (__| | | | |_| | (_| | (_| | || (_| |
 \___|_|   \__,_|_| |_|\___|_| |_|\__, |\__,_|\__,_|\__\__,_|
                                  |___/

BENTO
chmod 0755 /etc/motd
