#!/bin/bash
sudo yum -y install docker
sudo service docker start
sudo chkconfig docker on
sudo docker pull selenium/node-firefox
sudo  docker run -d --link selenium-hub:hub -e TZ=Europe/Madrid selenium/node-firefox::2.47.1
