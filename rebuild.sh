#!/usr/bin/env bash

VERSION=0.10.0

docker build -t="sunside/storm:$VERSION" storm
docker build -t="sunside/storm-nimbus:$VERSION" storm-nimbus
docker build -t="sunside/storm-supervisor:$VERSION" storm-supervisor
docker build -t="sunside/storm-ui:$VERSION" storm-ui
