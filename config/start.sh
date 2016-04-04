#!/bin/sh
/bin/consul agent -node=$NODE -config-dir=/config -dc=$DC -atlas-join -atlas=$ACCOUNT -atlas-token=`shush decrypt $TOKEN`
