#!/bin/sh
export LOCAL_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

/bin/consul agent -node=$NODE -config-dir=/config -dc=$DC -atlas-join -atlas=$ACCOUNT -atlas-token=`shush decrypt $TOKEN` -advertise $LOCAL_IP
