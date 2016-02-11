#!/usr/bin/env bash

docker build -t="sunside/storm" storm
docker build -t="sunside/storm-nimbus" storm-nimbus
docker build -t="sunside/storm-supervisor" storm-supervisor
docker build -t="sunside/storm-ui" storm-ui
