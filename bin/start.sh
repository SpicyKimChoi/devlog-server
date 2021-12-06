#!/usr/bin/env bash
export COMPOSE_PROJECT_NAME=msupandrunning

export wkdr=$PWD
cd $wkdr/devlog-postgresql && make start

cd $wkdr
make proxystart

unset wkdr