#!/bin/sh
echo "Change Log Rotation config file to root"
sudo chown root src/plugins/uwsgi-for-psgi/src/config/logrotate.conf
mvu plugin install logrotate
