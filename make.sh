#!/bin/bash

set -e

build() {
	cd client
	docker build -t gcr.io/karkanis-185818/almond-client .
}

deploy() {
	gcloud docker -- push gcr.io/karkanis-185818/almond-client
}

usage() {
	echo "Usage: make <build|deploy>"
}

echo $1
if [ "x$*" = "x" ]; then
	usage
elif [ "$1" == "build" ]; then
	build
elif [ "$1" = "deploy" ]; then
	build
	deploy
else
	usage
fi
