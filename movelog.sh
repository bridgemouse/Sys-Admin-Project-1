#!/bin/sh
NOW=$(date +"%Y%m%d")
cp /tmp/state.log statelog.$NOW
rm /tmp/state.log