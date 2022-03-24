#!/bin/sh
date >> /users/EB907277/586-project-1/state.log
NOW=$(date +"%m-%d-%Y")
cd /users/EB907277/586-project-1
ls -l >> /users/EB907277/586-project-1/state.log
git add /users/EB907277/586-project-1/state.log
git commit -m $NOW
git push