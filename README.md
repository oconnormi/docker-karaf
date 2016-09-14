# Karaf
Lightweight docker image for [Karaf](http://karaf.apache.org/)

[![GitHub license](https://img.shields.io/github/license/oconnormi/docker-karaf.svg?style=flat-square)](https://github.com/oconnormi/docker-karaf/blob/master/LICENSE)

[![Docker Automated buil](https://img.shields.io/docker/automated/oconnormi/karaf.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/oconnormi/karaf/)

[![Waffle.io](https://img.shields.io/waffle/label/oconnormi/docker-karaf/ready.svg?maxAge=2592000?style=flat-square)](https://waffle.io/oconnormi/docker-karaf)

[![Waffle.io](https://img.shields.io/waffle/label/oconnormi/docker-karaf/in%20progress.svg?maxAge=2592000?style=flat-square)](https://waffle.io/oconnormi/docker-karaf)

This image provides a basic karaf container on top of alpine linux. This results in an image size somewhere around `200 MB`

## Usage

To run:

```shell
docker run -d -p 80:8181 \
  -p 443:8443 \
  oconnormi/karaf
```

### Persistence

To persist data/configurations mount either a volume container or a local folder to `/app/data`

### Configuration

To configure the system mount a volume container or local folder to `/app/etc`

### Deploying bundles

To deploy bundles that are not packaged with the karaf distribution mount a volume container or local folder to `/app/deploy`

### Exposed Ports

|Port   |Purpose               |
|:-----:|:--------------------:|
|1099   | JMX RMI registry     |
|44444  | JMX RMI server       |
|8101   | Karaf SSH server     |
|5701   | Hazelcast            |
|54327  | Hazelcast multicast  |
|8181   | http                 |
|8443   | https                |
