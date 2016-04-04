## Consul Docker container with KMS encrypted Atlas token
================

This container uses [shush](https://github.com/realestate-com-au/shush) to decrypt an atlas token which is used to join a consul cluster.

`docker build -t consul-agent-kms`
