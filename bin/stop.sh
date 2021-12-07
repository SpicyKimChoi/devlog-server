#!/usr/bin/env bash
export COMPOSE_PROJECT_NAME=msupandrunning

export wkdr=$PWD
cd $wkdr/devlog-postgresql && make stop

cd $wkdr
make proxystop

unset wkdr