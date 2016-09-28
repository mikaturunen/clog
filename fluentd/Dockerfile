FROM          ubuntu:14.04
MAINTAINER    Mika Turunen <mika.turunen@ymail.com>

ENV           DEBIAN_FRONTEND noninteractive
# required packages for td-agent
RUN           apt-get update && apt-get install -y curl libcurl4-openssl-dev ruby ruby-dev make
# install fluentd td-agent
RUN           curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
# clean cache files
RUN           apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
# stop running fluentd
RUN           /etc/init.d/td-agent stop
ENTRYPOINT    ["/opt/td-agent/embedded/bin/fluentd"]
CMD           ["-c","/etc/fluentd/fluent.conf"]
