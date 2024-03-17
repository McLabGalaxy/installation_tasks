## FIX DOCKER
## clean up
#for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

## install
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## INSTALL
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

