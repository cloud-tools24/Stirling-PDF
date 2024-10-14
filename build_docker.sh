#!/bin/bash

# first intsall java version 17
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb
rm jdk-21_linux-x64_bin.deb

./gradlew build
docker build -t cloud-tools-stirling-pdf:14.10.2024 -f Dockerfile .
