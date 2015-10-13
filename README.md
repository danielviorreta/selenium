# selenium project 

To stop dockers:<br/>
sudo docker stop $(sudo docker ps -a -q) 

To delete dockers:<br/>
sudo docker rm $(sudo docker ps -a -q)

To log in a docker:
sudo docker exec -it <containerIdOrName> bash

To see logs:
sudo docker logs -f <container-id|container-name>

To start hub:
sudo  docker run -d -p 4444:4444 --restart=always -e TZ=Europe/Madrid --name selenium-hub  selenium/hub:2.47.1

To start a node:
sudo  docker run -d --link selenium-hub:hub -e TZ=Europe/Madrid selenium/node-firefox:2.47.1




