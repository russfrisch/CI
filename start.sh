#!/bin/bash
#export HOST_IP=$(ip route|awk '/default/ { print $3 }')
docker-compose up -d --build --scale teamcity-agent=1 