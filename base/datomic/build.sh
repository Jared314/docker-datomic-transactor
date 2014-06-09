#!/bin/bash
cd /tmp

# Install Dependencies
apt-get -y install unzip

DIR=$(ls | grep datomic-*.zip | sed 's/\.zip$//')

unzip datomic-*.zip

mv $DIR /opt/datomic
mv transactor.properties /opt/datomic/config/


# Cleanup
rm -r /tmp/*
apt-get -y purge unzip
