#!/bin/bash -x
version=0.10.5
mkdir /tmp/nodejs && cd $_
wget -N http://nodejs.org/dist/v${version}/node-v${version}.tar.gz
tar xzvf node-v${version}.tar.gz && cd node-v${version}
./configure
make install
