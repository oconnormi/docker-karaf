#!/bin/bash

$APP_HOME/bin/start

while [ ! -f $APP_HOME/data/log/karaf.log ]
do
  sleep 2
done

tail -f $APP_HOME/data/log/karaf.log
