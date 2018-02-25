#!/usr/bin/env bash
# update all existing packages
sudo yum -y update
# install wget and dos2unix
sudo yum -y install wget
sudo yum -y install dos2unix
# download java
sudo wget --no-cookies \
--no-check-certificate \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jdk-8u162-linux-x64.rpm" \
-O /tmp/jdk-8-linux-x64.rpm
# install java
echo "installing jdk 8"
sudo yum -y install /tmp/jdk-8-linux-x64.rpm
echo "removing /tmp/jdk-8-linux-x64.rpm"
sudo rm /tmp/jdk-8-linux-x64.rpm

