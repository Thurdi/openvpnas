# openvpnas
This is an Openvpn Access server running inside a Ubuntu 16.04 Docker container

##COMMAND TO BUILD

sudo docker run -d -p 443:443 -p 943:943 -p 1194:1194/udp --privileged=true --name --restart unless-stopped openvpnas openvpnas

##COMMAND TO RESTART

sudo docker start openvpnas

##COMMAND TO CHANGE DEFAULT USER PASSWORD

sudo docker exec -it <container_ID> /bin/bash -c "printf '\<password\>\n\<password\>' | passwd openvpn"
