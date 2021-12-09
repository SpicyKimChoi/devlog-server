#!/usr/bin/env bash
export COMPOSE_PROJECT_NAME=msupandrunning

export wkdr=$PWD
cd $wkdr/devlog-postgresql && make start
cd $wkdr/ms-user-authentication && make dev

cd $wkdr
make proxystart

unset wkdr