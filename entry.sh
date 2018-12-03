#!/bin/bash
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
tail -f /data/docker-compose.yml
setup -r .
scons -Q -j 6 opt=3