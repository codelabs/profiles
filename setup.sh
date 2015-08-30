#!/bin/bash

read -p "Replacing your profile files. Do you want to continue [y/Y/n/N]: " CONFIRM

if echo "$CONFIRM" | grep -iq "^y" ; then

    for i in `ls .bash* .git-prompt.sh .screenrc .vimrc`
    do
        echo "Copying $i -> $HOME/$i"
        cp $i $HOME/$i
    done

    cp -r .vim $HOME/
    cp -r .irssi $HOME/
else
    echo "Profiles: SKIPPED"
fi

sudo yum install wget ruby gcc glibc vim -y
gem update

sudo rpm -ivh http://apt.sw.be/redhat/el5/en/x86_64/rpmforge/RPMS/rpmforge-release-0.3.6-1.el5.rf.$(uname -i).rpm
rpm --import http://dag.wieers.com/rpm/packages/RPM-GPG-KEY.dag.txt
sudo yum install keychain
sudo yum install httpd mod_wsgi -y
sudo chkconfig httpd on

echo "Installing Go"
cd $HOME
wget https://storage.googleapis.com/golang/go1.5.linux-386.tar.gz
sudo tar -C /usr/local -xzf go1.5.linux-386.tar.gz
export PATH=$PATH:/usr/local/go/bin

