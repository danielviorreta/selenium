#!/bin/bash
sudo yum -y install docker
sudo service docker start
sudo chkconfig docker on
sudo docker pull selenium/hub
sudo docker pull selenium/node-firefox
sudo  docker run -d -p 4444:4444 --restart=always -e TZ=Europe/Madrid --name selenium-hub  selenium/hub:2.47.1
