#!/bin/sh

set -x

sudo -H pip install cpp-coveralls

cd src

ls -l

gcov *.o
cd ..
coveralls --exclude ci --no-gcov
