#!/bin/sh

APACHE_DOWNLOADS=http://www-us.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz
APACHE_ARCHIVES=http://archive.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz

echo "Downloading Karaf ${KARAF_VERSION}..."
if [ "${APACHE_ARCHIVED_RELEASE}" = "true" ]; then
  curl -LsSk --progress-bar ${APACHE_ARCHIVES} -o ${ARCHIVE_NAME}
else
  curl -LsSk --progress-bar ${APACHE_DOWNLOADS} -o ${ARCHIVE_NAME}
fi
