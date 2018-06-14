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
docker run -d --rm --name lindad -p 33820:33820 -p 33821:33821 -v node:/root/.Linda linda

```

## Lindad commands 

```bash
docker exec -it lindad /root/Lindad help
docker exec -it lindad /root/Lindad getinfo
```