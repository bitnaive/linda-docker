# Creates a Linda Coin hot wallet 
This container runs Lindad deamon the purpose of hot/cold wallet masternode setup 

## Dependencies 
* unzip (sudo apt-get install unzip)
* git (sudo apt-get install git)
* Docker (https://github.com/docker/docker-install)

## Building  
```bash
./build.sh
```

## Docker Command 
```bash
docker run --name lindad -p 33821:33820 -v node:/root/.Linda linda

```

## Lindad commands 

```bash
docker exec -it lindad /root/Lindad getinfo
```