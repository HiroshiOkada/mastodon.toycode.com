#!/bin/sh

docker-compose run --rm web rake mastodon:make_admin USERNAME=$1


