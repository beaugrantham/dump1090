#!/bin/bash

service nginx start
./dump1090 --write-json /run/dump1090 --stats --stats-range $@
