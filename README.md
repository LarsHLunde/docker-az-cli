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
