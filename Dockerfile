# perfSONAR Light

FROM ubuntu:precise
MAINTAINER Ryan Carter <ryan@cloudflare.com>

RUN apt-get update && apt-get install traceroute wget curl -y
RUN wget -qO /etc/apt/sources.list.d/perfsonar-wheezy-release.list http://downloads.perfsonar.net/debian/perfsonar-wheezy-release.list \
 && wget -qO - http://downloads.perfsonar.net/debian/perfsonar-wheezy-release.gpg.key | apt-key add -
RUN apt-get update && apt-get install perfsonar-endpoint -y
