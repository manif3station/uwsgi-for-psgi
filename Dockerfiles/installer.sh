#!/bin/bash
mkdir /tmp/setup

cd /tmp/setup
wget https://projects.unbit.it/downloads/uwsgi-latest.tar.gz -cO _
tar zxf _

cd uwsgi*

python3 uwsgiconfig.py --plugin plugins/psgi core
find /tmp -name psgi_plugin.so -exec mv {} /usr/local/bin \;

python3 uwsgiconfig.py --plugin plugins/http core
find /tmp -name http_plugin.so -exec mv {} /usr/local/bin \;

python3 uwsgiconfig.py --build psgi
mv uwsgi /usr/local/bin/uwsgi

cd /tmp; rm -fr setup
