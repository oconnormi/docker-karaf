#!/bin/bash

$APP_HOME/bin/start

sleep 2

tail -f $APP_HOME/data/log/karaf.log
