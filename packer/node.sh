#!/bin/bash
sudo yum -y install docker
sudo service docker start
sudo chkconfig docker on
sudo docker pull selenium/node-firefox
sudo  docker run -d -e TZ=Europe/Madrid --link selenium-hub:hub selenium/node-firefox
