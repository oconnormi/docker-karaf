#!/bin/sh
mkdir -p /opt/karaf
tar --strip-components=1 -C /opt/karaf -xzf ${ARCHIVE_NAME}
