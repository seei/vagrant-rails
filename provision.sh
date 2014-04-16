#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev sqlite3 libsqlite3-dev python-software-properties
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update
apt-get install -y ruby2.1-dev
gem install rails --no-ri --no-rdoc
