#!/bin/bash

service nginx start
./dump1090 --net --write-json /run/dump1090 --stats --stats-range $@
