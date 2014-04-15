#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential zlib1g-dev git-core libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev sqlite3 libsqlite3-dev

cd /home/$SUDO_USER
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo "export PATH='/home/${SUDO_USER}/.rbenv/bin:$PATH'" >> .bashrc
echo 'eval "$(rbenv init -)"' >> .bashrc

git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build

chown -R $SUDO_USER /home/$SUDO_USER/.rbenv
chgrp -R $SUDO_USER /home/$SUDO_USER/.rbenv

su - $SUDO_USER -c "export PATH='/home/${SUDO_USER}/.rbenv/bin:$PATH'"
su - $SUDO_USER -c "/home/${SUDO_USER}/.rbenv/bin/rbenv install 2.1.0"
su - $SUDO_USER -c "/home/${SUDO_USER}/.rbenv/bin/rbenv rehash"
su - $SUDO_USER -c "/home/${SUDO_USER}/.rbenv/bin/rbenv global 2.1.0"
su - $SUDO_USER -c "/home/${SUDO_USER}/.rbenv/versions/2.1.0/bin/gem install bundler"
su - $SUDO_USER -c "/home/${SUDO_USER}/.rbenv/versions/2.1.0/bin/gem install rails --no-ri --no-rdoc"
