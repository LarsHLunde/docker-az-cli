# docker-az-cli
A small footprint docker instance for running az-cli

## Install instructions
```
git clone https://github.com/LarsHLunde/docker-az-cli.git  
cd docker-az-cli  
docker build -t az-cli .
docker run -d \
  --name az-cli \
  --restart unless-stopped \
  az-cli
```  
If you want to use the output from az-cli, create a bind:  
```
git clone https://github.com/LarsHLunde/docker-az-cli.git  
cd docker-az-cli  
docker build -t az-cli .
docker run -d \
  --name az-cli \
  --restart unless-stopped \
  -v /host/machine/folder:/docker/machine/folder \
  az-cli
```   
## Usage
On the host machine, run the command:  
```
docker exec -it az-cli /bin/bash
```  
This will drop you to shell inside the docker.  
Use the docker as you would a normal debian install with az-cli:  
```
az login
```  
