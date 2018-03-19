# docker-cloudcidrs

This is a simple docker container wrapper for this project: https://github.com/cloudyr/cloudcidrs

It uses the following docker image as base: https://hub.docker.com/r/zamora/r-devtools/

It supports the same providers as the upstream project and returns back a list of CIDR block for each provider:

* amazon
* azure
* google
* digitalocean
* google
* rackspace
* softlayer

# Run

```
PROVIDER=amazon
IP_VERSION=4

docker run --rm -it -e PROVIDER=$PROVIDER -e IP_VERSION=$IP_VERSION emergya/cloudcidrs
```

# Run and some parsing (one clean CIDR per line)

```
PROVIDER=amazon
IP_VERSION=4

docker run --rm -it -e PROVIDER=$PROVIDER -e IP_VERSION=$IP_VERSION emergya/cloudcidrs | grep -o '".*"' | tr -s ' ' | xargs -rI % echo -e '% \n'
```
